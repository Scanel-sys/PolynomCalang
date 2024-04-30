CC = gcc
LEX = flex
YACC = bison

PARSER_FILE = parser.y
FLEX_FILE = lang.l
RESULT_FILES = lex.yy.c parser.tab.h parser.tab.c

clean:
	rm -f $(RESULT_FILES)
	rm -rf build

build:
	mkdir -pv build
	$(YACC) -d $(PARSER_FILE)
	$(LEX) $(FLEX_FILE)
	$(CC) main.c poly.c lex.yy.c parser.tab.c -lm -o ./build/poly_calc

all: clean build
