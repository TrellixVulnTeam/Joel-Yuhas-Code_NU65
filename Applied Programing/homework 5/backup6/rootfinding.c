/***************************************************************************
  Student framework for root finding algorithms for bisection, newton, and secant.
   
  11/10/2015   R. Repka - Initial version
  12/28/2015 - R. Repka - added integer solution features
***************************************************************************/
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "ClassErrors.h"
#include "rootfinding.h"


/******************************************************************************
 Purpose: Finds a root of scalar, nonlinear function f using the bisection  
 method. a and b make up the initial bracket to start bisecting from.
 
 Where: func1arg f  - function whose root is to be determined
                      must take a single argument of type double and return
        double a    - initial root bracket guess
        double b    - initial root bracket guess
        double atol - absolute error termination tolerance,
        int verb    - verbose flag, 1 = TRUE, 0 = FALSE
        
Returns: double - the root refined to the desired tolerance or NAN
Errors:  prints a message and returns with NAN                    
******************************************************************************/
double bisection(func1arg f, double a, double b, double atol, int verb)
{
double c = (a + b)/ 2.0;
double error = b - c;

//printf("in the bisetction: %lf, %lf, %lf, %d\n", a, b ,atol, verb);
//double fa = f(a);
//double fb = f(b);


if (fabs(a - b) <= atol){
	iterations++;
	if (verb == 1){	
	printf("iter:%4d a:%9.9lf b:%9.9lf x:%9lf err:%9.9lf\n", iterations, a, b, c, error);
	}
	return c;
}else if(f(a)*f(c) < 0){
	iterations++;
	if (verb == 1){
	printf("iter:%4d a:%9.9lf b:%9.9lf x:%9lf err:%9.9lf\n", iterations, a, b, c, error);
	}
	return bisection(f, a, c, atol, verb);
}else{
	iterations++;
	if (verb == 1){
	printf("iter:%4d a:%9.9lf b:%9.9lf x:%9lf err:%9.9lf\n", iterations, a, b, c, error);
	}
	return bisection(f, c, b, atol, verb);
}


return 0;



}


/******************************************************************************
 Purpose: Finds a root of function f using the newton method. x0 is the initial 
 guess,  df is the derivative of function f , Nmax is the maximum number
  of iterations, atol is the tolerance, and verb will turn a verbose print* out

  Where: func1arg f  - function whose root is to be determined
                       must take single argument of type double and return
                       single value of type double
         func1arg df - erivative of function whose root is to be determined
                       must take single argument of type double and return
                       single value of type double
         double x0   - initial guess for location of root
         int Nmax    - maximum number of iterations to achieve convergence
         double atol - absolute error convergence tolerance
         int verb    - verbose flag, 1 = TRUE, 0 = FALSE

Returns: double - the root refined to the desired tolerance or NAN
Errors:  prints a message and returns with NAN      
******************************************************************************/
double newton(func1arg f, func1arg df, double x0, int Nmax, double atol, int verb)
{ 
	double c, x1, error;
	for (iterations = 1; iterations <= Nmax; iterations++){
		c = f(x0)/df(x0);
		x1 = (x0-c);
		error = fabs(c);
		if(verb == 1){printf("iter:%4d x0:%9.9lf x1:%9.9lf err:%9.9lf\n", iterations, x0, x1, error);}
		if (fabs(c) < atol){
			if(verb == 1){printf("iter:%4d x0:%9.9lf x1:%9.9lf err:%9.9lf\n", iterations, x0, x1, error);}
			return x1;
		}
		x0=x1;
	}
	printf("Solution could not be found within Max Iteration Value");
	return 1;
}


/******************************************************************************
 Purpose: Finds a root of function f using the secant method. x0 and x1 are 
 the two initial guesses used to find the first tangent.
 
 Where: func1arg f  - function whose root is to be determined
                       must take single argument of type double and return
                       single value of type double
         double x0   - initial guess for location of root
         double x1   - another initial guess for location of root
         int Nmax    - maximum number of iterations to achieve convergence
         double atol - absolute error convergence tolerance
         int verb    - verbose flag, 1 = TRUE, 0 = FALSE

Returns: double - the root refined to the desired tolerance or NAN
Errors:  prints a message and returns with NAN        
******************************************************************************/
double secant(func1arg f, double x0, double x1, int Nmax, double atol, int verb)
{ 
	double c, error;
	for (iterations = 1; iterations <= Nmax; iterations++){
		c = x1 - f(x1)*(x1-x0)/(f(x1-f(x0)));
		error = fabs(x1 - x0);
		//c = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
		x0=x1;
		x1=c;
		if(verb == 1){printf("iter:%4d x0:%9.9lf x1:%9.9lf err:%9.9lf\n", iterations, x0, x1, error);}
		if(error < atol){
			if(verb == 1){printf("iter:%4d x0:%9.9lf x1:%9.9lf err:%9.9lf\n", iterations, x0, x1, error);}
			return c;
		}
	}
	printf("Solution could not be found within Max Iteration Value");
	return 1;
}


