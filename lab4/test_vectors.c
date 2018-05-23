// 09/07/2017 - CS 5480 - Meine, Joel
// Lab #4: Problem #4

// Write a small C/C++ program that generates 10 random test vectors.

#include <stdlib.h> // srand
#include <time.h> // time
#include <stdio.h> // printf

int main()
{
	srand (time(NULL));

	for (int i = 0; i < 10; i++)
	{
		for (int j = 0; j < 36; j++)
		{
			int digit = rand() % 2; // randomly use a 1 or 0 digit
			printf ("%u", digit);
		}
		printf ("\n");
	}

	return 0;
}
