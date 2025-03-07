/**************************************************************************
  Student frame work.   Add and remove as you see fit.
  
  07/14/2017    R. Repka    Initial release
 * ***********************************************************************/
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include "poly.h"
#include "ClassErrors.h"

#define ITER 50000

/************************************************************************
  Tests three types of root finding, secant, newton, and bisection,
  based on user input and prints out the timing results.
************************************************************************/
int main(int argc, char* argv[])
{
   /*------------------------------------------------------------------------
      UI variables with sentential values
   ------------------------------------------------------------------------*/
   int verbose = 0;
   enum modes {UNDEF, INPUT} mode = UNDEF;
/*  
 double tol = 0.0;
   double guess1 = INFINITY;   
   double guess2 = INFINITY;
   double result = 0;
   int maxIter = 100;
   func1arg f = &func1;
   func1arg df = &func1Deriv;
   char Coef, Mag;
   double Inc, CoefInt, MagInt;
   
*/

  FILE *DataFile = NULL; 


   /*------------------------------------------------------------------------
     These variables are used to control the getopt_long_only command line 
     parsing utility.  
   ------------------------------------------------------------------------*/
   int rc;
   /* getopt_long stores the option index here. */
   int option_index = 0;
  
   /* This contains the short command line parameters list */
   char *getoptOptions = "vi:"; 
  
   /* This contains the long command line parameter list, it should mostly 
     match the short list                                                  */
   struct option long_options[] = {
      /* These options don’t set a flag.
         We distinguish them by their indices. */
      {"verbose",	no_argument,		0, 'v'},
      {"verb",		no_argument,		0, 'v'},
      {"input",	 	required_argument,	0, 'i'},
      {"in",	 	required_argument,	0, 'i'},

      {0, 0, 0, 0}
   };
  
   opterr = 1;           /* Enable automatic error reporting */
   while ((rc = getopt_long_only(argc, argv, getoptOptions, long_options, 
                                                    &option_index)) != -1) {
      
 //     printf("getopt_long_only() returned ='%c' index = '%d'\n",  rc, option_index);   
      /* Detect the end of the options. */
      switch (rc)
        {
        case 'v':                    /* Verbose */
          verbose = 1;
          break;
        case 'i':                    /* Bisection */
          mode = INPUT;

printf("%s \n", optarg);

	  DataFile = fopen(optarg, "r");
          break;
	case ':':
	fprintf(stderr, "An operand is missing\n");
	break;

        case '?':  /* Handled by the default error handler */
	 fprintf(stderr, "An invalid optn was selected\n");
	 fflush(stderr);
          break;

       default:
          printf ("Internal error: undefined option %0xX\n", rc);
	  fflush(stderr);
          exit(PGM_INTERNAL_ERROR);
       } // End switch 
   } /* end while */

   /*------------------------------------------------------------------------
     Check for command line syntax errors
   ------------------------------------------------------------------------*/
/*
   if ((optind < argc)   ){
      fprintf(stderr, "Tests root finding methods\n");
      fprintf(stderr, "usage: hw5 -b[isection] | -s[ecant] | -n[ewton]   -t[ol[erance} number\n");
      fprintf(stderr, "          -g[uess1] number   <-g[u]ess2 number   <-verb[ose]> \n");
      fprintf(stderr, " e.g:   hw5 -bisection -tol 1E-6 -g1 -2 -g2 3 -verb\n"); 
      fflush(stderr);
      return(PGM_INTERNAL_ERROR);
   }  End if error */

    
   /* Performs the root finding with bisection */
   if(mode == INPUT)
   {

	unsigned int i = 0;
	int count = 0;
	char *b;
	char *line = (char *)malloc(256*sizeof(char));
	double tol = 0.00001;

	double complex *z1;
	polynomial p;
	int tempArray[20]; 
	//char *b;
	//char *buffer;
	//char sep[] = " Lkf alskdfj lask";
	
	//b = strtok(buffer, sep);

	if (NULL != DataFile)
	{
		

		//initPoly(&p, i);
		
		
		

		/*Reading File in as seperate lines. Each line is a poly*/
		while ( fgets (line, sizeof(line), DataFile) != NULL){

			/*Splicing Lines*/
			b = strtok(line, " ");
			count = 0;
			while(b != NULL){
				//printf("retreived value %f \n", atof(b));
				tempArray[count] = atof(b);
				b = strtok(NULL, " ");
				count++;

			}

			/*Initializing Polynomial*/
			initPoly(&p, count);
			
			double complex polyTemp[count];
			i = 0;
			while (i < count){
				polyTemp[i] = tempArray[i];
				i++;
			}
			i = 0;

/*printf("POLY TEMP\n");
while (i < count){

printf("%f\n", polyTemp[i]);
i++;
}*/
i = 0;
			/*Saving Data in initialized polynomial*/
			p.polyCoef = polyTemp; 

/*printf("POLY COEF\n");

while (i < count){

printf("%f\n", p.polyCoef[i]);
i++;
}*/

		z1 = (*roots)(&p, tol, verbose);

		freePoly(&p);			
		}



		fclose(DataFile);
	}else{
	fprintf(stderr, "File type is incorrect!\n");

	}


   }  // End INPUT   
        
    return PGM_SUCCESS;
}
