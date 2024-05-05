#include <stdio.h>
#include "parser.tab.h"

FILE* yyin;

int main(int argc, char *argv[]) 
{
    yyin = fopen(argv[1], "r");
	if (yyin == NULL) 
	{	
		printf("bad file input\n"); 
		return -1; 
	}
	yyparse();
	fclose(yyin);
	return 0;
}

