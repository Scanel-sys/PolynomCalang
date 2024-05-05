CC = gcc
LEX = flex
YACC = bison
TARGET = PolyCalc

PARSER_FILE = parser.y
RESULT_FILES = parser.tab.h parser.tab.c

clean:
	rm -f $(RESULT_FILES)
	rm -rf build

build:
	$(YACC) -d $(PARSER_FILE)
	$(CC) main.c parser.tab.c parser.tab.h yylex.c -lm -o $(TARGET) -w -lm

all: clean build
