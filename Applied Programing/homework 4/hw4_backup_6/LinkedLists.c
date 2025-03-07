/******************************************************************************
 An student framework implementation of doubly linked lists that holds 
 elements containing a 256 character string and a sequence number.
 12/24/2017 - R. Repka     Removed AddToFrontOfLinkedList()
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ClassErrors.h"
#include "LinkedLists.h"

/******************************************************************************
 Initialize the linked list data structure

 Where: LinkedLists *ListPtr - Pointer to the linked list to create
 Returns: nothing
 Errors: none
******************************************************************************/
void InitLinkedList(LinkedLists *ListPtr)
{

	ListPtr->NumElements = 0;
	ListPtr->FrontPtr = NULL;
	ListPtr->BackPtr = NULL;

}


/******************************************************************************
 Adds a node to the back of the list.

 Where: LinkedLists *ListPtr    - Pointer to the linked list to add to
        ElementStructs *DataPtr - Pointer to the data to add to the list
 Returns: nothing
 Errors: Prints to stderr and exits
******************************************************************************/
void AddToBackOfLinkedList(LinkedLists *ListPtr, ElementStructs *DataPtr)
{

/*--------Creating Temp Variables, node, and alocation Memeory--------------*/
	/*Initaizlizing Node*/
	LinkedListNodes* Node;
	MALLOC_DEBUG(Node);
	Node = (LinkedListNodes *)malloc(sizeof(LinkedListNodes));
	if (Node == NULL){
		fprintf(stderr, "Malloc for Node FAILED!\n");
		fprintf(stderr, "LinkedList.c, AddToBackOfLinkedList, Line 45\n");
		fflush(stderr);
	}
	
	Node->ElementPtr = malloc(sizeof(ElementStructs));
	if (Node->ElementPtr == NULL){
		fprintf(stderr, "Malloc for Node FAILED!\n");
		fprintf(stderr, "LinkedList.c, AddToBackOfLinkedList, Line 52\n");
		fflush(stderr);
	}
	MALLOC_DEBUG(Node);
	
	/*Copying Value into Node*/
	memcpy(Node->ElementPtr, DataPtr, sizeof(ElementStructs));



/*--------Adding to Linked List---------------------------------------------*/
	/*Case where List is empty*/
	if (ListPtr->BackPtr == NULL){
		DataPtr->Num = 0;
		ListPtr->BackPtr = Node;
		ListPtr->FrontPtr = Node;
		ListPtr->NumElements = 1;
		Node->Next = NULL;
		Node->Previous = NULL;

	}
	/*List is not Empty*/
	else{
		DataPtr->Num = ListPtr->NumElements;
		ListPtr->BackPtr->Next = Node;
		Node->Previous = ListPtr->BackPtr;
		Node->Next = NULL;
		ListPtr->BackPtr = Node;
		ListPtr->NumElements = ListPtr->NumElements + 1;

	}

}

/******************************************************************************
 Removes a node from the front of the list and returns a pointer to the node
 data removed. On empty lists should return a NULL pointer.
 Note: This will destroy the node but not the associated ElementStruct data element.
  
 Where: LinkedLists *ListPtr    - Pointer to the linked list to remove from
 Returns: Pointer to the node removed or NULL for none
 Errors: none
******************************************************************************/
ElementStructs *RemoveFromFrontOfLinkedList(LinkedLists *ListPtr)
{
	ElementStructs *TempNode;
	/*Empty Case*/
	if( ListPtr->FrontPtr == NULL ){
		return (NULL);
	}
	else{
		LinkedListNodes *Node;
		Node = ListPtr->FrontPtr;
		ListPtr->FrontPtr = ListPtr->FrontPtr->Next;
		ListPtr->FrontPtr->Previous = NULL;
		
		/*Change Data Numbers to reflect new location*/
		LinkedListNodes *tmp, *tmp1;
		tmp = ListPtr->FrontPtr;
		while( tmp != NULL){
			tmp1 = tmp->Next;
			tmp->ElementPtr->Num = tmp->ElementPtr->Num-1;
			tmp = tmp1;
		}

		ListPtr->NumElements = ListPtr->NumElements - 1;
		
		
	TempNode = malloc(sizeof(ElementStructs));
	if (TempNode == NULL){
		fprintf(stderr, "Malloc for Node FAILED!\n");
		fprintf(stderr, "LinkedList.c, RemoveFromBackOfLinkedList, Line 155\n");
		fflush(stderr);
	}
	MALLOC_DEBUG(Node);
	
	/*Copying Value into Node*/
	memcpy(TempNode, Node->ElementPtr, sizeof(ElementStructs));

	FREE_DEBUG(Node);

		return (TempNode);
	}
	

}

/******************************************************************************
 Removes a node from the back of the list and returns a pointer to the node
 data removed. On empty lists should return a NULL pointer.
 Note: This will destroy the node but not the associated ElementStruct data element.
  
 Where: LinkedLists *ListPtr    - Pointer to the linked list to remove from
 Returns: Pointer to the node removed or NULL for none
 Errors: none
******************************************************************************/
ElementStructs *RemoveFromBackOfLinkedList(LinkedLists *ListPtr)
{
	ElementStructs *TempNode;

	/*Empty Case*/
	if( ListPtr->BackPtr == NULL ){
		return (NULL);
	}
	else{
		LinkedListNodes *Node;
		Node = ListPtr->BackPtr;
		ListPtr->BackPtr = ListPtr->BackPtr->Previous;
		ListPtr->BackPtr->Next = NULL;
		
		ListPtr->NumElements = ListPtr->NumElements - 1;


	TempNode = malloc(sizeof(ElementStructs));
	if (TempNode == NULL){
		fprintf(stderr, "Malloc for Node FAILED!\n");
		fprintf(stderr, "LinkedList.c, RemoveFromBackOfLinkedList, Line 155\n");
		fflush(stderr);
	}
	MALLOC_DEBUG(Node);
	
	/*Copying Value into Node*/
	memcpy(TempNode, Node->ElementPtr, sizeof(ElementStructs));

	FREE_DEBUG(Node);

		return (TempNode);
	}
}


/******************************************************************************
 De-allocates the linked list and resets the struct fields (in the header) 
 to indicate that the list is empty.

 Where: LinkedLists *ListPtr    - Pointer to the linked list to destroy
 Returns: nothing
 Errors: none
******************************************************************************/
void DestroyLinkedList(LinkedLists *ListPtr)
{

	if(ListPtr->FrontPtr != NULL){
		LinkedListNodes *tmp, *tmp1;
		tmp = ListPtr->FrontPtr;
		while( tmp != NULL){
			tmp1 = tmp->Next;
			
			FREE_DEBUG(tmp->ElementPtr);
			FREE_DEBUG(tmp);
			tmp = tmp1;
		}

		ListPtr->NumElements = 0;
		ListPtr->FrontPtr = NULL;
		ListPtr->BackPtr = NULL;
	}

}


/******************************************************************************
 Searches the linked list for a provided word. If found, returns the pointer
 to the element struct. If not found, returns a NULL pointer
 
 Where: LinkedLists *ListPtr - Pointer to the linked list to search
        char *String         - Pointer to the string to search
 Returns: Pointer to the element if found, NULL otherwise
 Errors: none
 * ***************************************************************************/
ElementStructs *SearchList(LinkedLists *ListPtr, char *String)
{
	


	/*checks if the array is null*/
	if(ListPtr->FrontPtr != NULL){
		LinkedListNodes *tmp, *tmp1;
		tmp = ListPtr->FrontPtr;
		while( tmp != NULL){
			tmp1 = tmp->Next;		
			if( strcmp(String,tmp->ElementPtr->String) == 0){
				/*printf("Match Found: ");*/
				return (tmp->ElementPtr);
			}

			tmp = tmp1;
		}
		printf("No Matches!\n");
		return NULL;
	} else {

	printf("There is nothing in the list!\n");
		return NULL;
	}


}




