/******************************************************************************
 * TestDarray_hw.c - skeleton of code to test DynamicArray module
 *
 * Program to test the DynamicArrays module.  Reads in a large list of words
 * and puts them into the data structure, then prints out the first and last 
 * five elements in the data structure as well as the total number of words.
 * R. Repka   9/27/2017 - Minor comment fix
 * R. Repka  12/23/2017 - Safer fscanf() and strncpy()
 ******************************************************************************/
#include <stdio.h>
#include <string.h>
#include "ClassErrors.h"
#include "DynamicArrays.h"

/* Initial Size of Dynamic Array */
#define INITIAL_SIZE (1000)

/* Local function definitions */
 void ReadData(FILE *InputFile, DArray *DynamicArrayPtr);


/******************************************************************************
 This program to test the Data structure by reading the Data file provided on
 the command line into the structure, printing out the first and last N
 elements and total number of elements.  
        int main(int argc, char* argv[])
 Where:
    int argc        - The number of command line parameters
    char *argv[]    - An array of pointers to the parameters
    returns: in     - 0 for success, non-zero for error
    errors:         - Error message printed to stderr and exits with an error 
                      code 
******************************************************************************/
int main(int argc, char* argv[])
  {
  /* declare local variables */
   int ErrorCode = 0;               /* Application error code - 0 is OK */
   DArray TestDynamicArray;         /* Dynamic Array for Data */
   FILE *DataFile = NULL;           /* Pointer to Data file name (from cmd line) */
   //int lcv;                         /* Loop Control Variable */

   /* One command line argument is required: the file name     */
   if (2 == argc) /* note that argc 2 means one argument given */
     {
      /* Try to open the Data file for input (read mode)    
          argv[1] is a string which contains the file name*/
      DataFile = fopen(argv[1], "r"); 

      /* Verify that file was opened correctly */
      if (NULL != DataFile)
        {
        /********************************************************************
         Pseudo code: 
         Initialize the dynamic array 
         Read all Data from text file 
         Close the Data file - use fclose(DataFile)
         Print the first 6 entries 
         Print the last 6 entries 
         Print total number of words read 
         De-allocate the dynamic array 
        ********************************************************************/
         /* WRITE YOUR CODE HERE */


		//loops through and sees al the entires

 
		CreateDArray(&TestDynamicArray, INITIAL_SIZE);
		ReadData(DataFile, &TestDynamicArray);
		fclose(DataFile);
		//printing first 6
		printf("\n");
		printf("\n");
		printf("\n");
		printf("The first 6 words: ");
		printf("\n");
		printf(TestDynamicArray.Payload[0].String);
		printf("\n");
		printf(TestDynamicArray.Payload[1].String);
		printf("\n");
		printf(TestDynamicArray.Payload[2].String);
		printf("\n");
		printf(TestDynamicArray.Payload[3].String);
		printf("\n");
		printf(TestDynamicArray.Payload[4].String);
		printf("\n");
		printf(TestDynamicArray.Payload[5].String);
		printf("\n");
		printf("\n");
		printf("\n");

		//printing last 6
		printf("The last 6 words: ");
		printf("\n");
		printf(TestDynamicArray.Payload[TestDynamicArray.EntriesUsed - 6].String);
		printf("\n");
		printf(TestDynamicArray.Payload[TestDynamicArray.EntriesUsed - 5].String);
		printf("\n");
		printf(TestDynamicArray.Payload[TestDynamicArray.EntriesUsed - 4].String);
		printf("\n");
		printf(TestDynamicArray.Payload[TestDynamicArray.EntriesUsed - 3].String);
		printf("\n");
		printf(TestDynamicArray.Payload[TestDynamicArray.EntriesUsed - 2].String);
		printf("\n");
		printf(TestDynamicArray.Payload[TestDynamicArray.EntriesUsed - 1].String);
		printf("\n");
		printf("\n");
		printf("\n");

		//printing total
		printf("Total amount: %d \n", TestDynamicArray.EntriesUsed);
		DestroyDArray(&TestDynamicArray);

        } /* if() */
      else
        {
         /* file not opened correctly */
	fprintf(stderr, "\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "%s could not be opened!\n", argv[1]);
	fprintf(stderr, "TestDarray_hw.c Line 50\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "\n");
	fflush(stderr);
	return(2);


        } /* if...else() */
     } /* if() */
   else
     {
      /* Too many arguments */

	fprintf(stderr, "\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "Progam was called with the wrong paramaters. \n");
	fprintf(stderr, "Program must be called with a file that contains a list of words. \n");
	fprintf(stderr, "The input paramater is typically ./FILENAME \n");
	fprintf(stderr, "This progam will place all words less than 255 bytes long into a \n");
	fprintf(stderr, "Dynamic array and will print: \n");
	fprintf(stderr, "        - The first 6 words\n");
	fprintf(stderr, "        - The last 6 words\n");
	fprintf(stderr, "        - The total number of words\n");
	fprintf(stderr, "TestDarray_hw.c Line 34\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "\n");
	fflush(stderr);
	return(1);

     } /* if...else() */

   return ErrorCode;
  } /* main() */
  
 
/******************************************************************************
 Read the data file (assumed to be open) one word at a time placing each
 word into the data structure.  This routine will verify that the input string
 has the correct length.  Any string that is too long will generate a warning
 to stderr, not be added but processing will continue
        void ReadData(FILE *InputFile, DArray *DynamicArrayPtr)
  Where:
    FILE *InputFile         - Pointer to an open input file
    DArray *DynamicArrayPtr - Pointer to a storage block which holds the
                              data structure entry 
    returns: voi            - nothing is returned.
    errors:                 - This routine will print an error message to 
                              stderror and exit with an error code
******************************************************************************/
 void ReadData(FILE *InputFile, DArray *DynamicArrayPtr)
  {
   Data TempData;             /* temp variable to hold data   */
   int lcv = 1;               /* loop control variable        */
   //int strLen;                /* The actual input string length */
   char String[MAX_STR_LEN+2];/* temp variable to hold string */
   char formatStr [32];       /* Used to build the dynamic length */
   int skip = 0;	      /* Used for skipping extra string bits */
   
   /* Build a dynamic format string */
   sprintf(formatStr, "%c%d%c", '%', MAX_STR_LEN+1, 's');
   
   /* Read the data in from the file into the String buffer */
   while (EOF != fscanf(InputFile, formatStr, String))
     {
      /* Insert code here to make sure the input data is not too long
          hint:  use strlen(String)   */
	
	// checks size
	if (strlen(String) <= MAX_STR_LEN && skip == 0){

		// string is correct size, add it
		TempData.Num = lcv++;
		strncpy(TempData.String, String, MAX_STR_LEN);
		PushToDArray(DynamicArrayPtr, &TempData);
	}
	else
	{
		// string is too big,

		// toggle mechanism for skipping the extra bits at the end of
		// a string. Know that the next string is part of the 255
		// string because if it is > 255 then it has at least one char
		// that extends over.

		if (skip == 0)
		{ 
			skip = 1;
			fprintf(stderr, "\n");
			fprintf(stderr, "**A string was found to be too big. Ignoring word.**\n");
			fprintf(stderr, "**TestDarray_hw.c Line 188**\n");
			fprintf(stderr, "\n");
		}

		else
		{
			skip = 0;
		}
		
		
	
	}

     } /* while() */
  } /* ReadData() */
