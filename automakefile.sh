#!/bin/sh
## automakefile.sh for automakefile in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 12:53:12 2015 christian pliso
## Last update Mon Jun 22 17:23:52 2015 christian pliso
##

mkdir -p "`cat $1 | grep ^'REP;' | cut -c5- `"
mkdir -p ./"`cat $1 | grep ^'REP;' | cut -c5- `"/"`cat $1 | grep ^'HEADERS;' | cut -c9-`"
mkdir -p ./"`cat $1 | grep ^'REP;' | cut -c5- `"/"`cat $1 | grep ^'SOURCES;' | cut -c9-`"

echo 'NAME   =    ' "`cat $1 | grep ^'EXEC;' | cut -c6-`" > ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo '' >>./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo 'SRC    =    ' "`cat $1 | grep ^'SOURCES;'| cut -c9-`" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo '' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo 'LIB    =    ' "`cat $1 | grep ^'LIBS;' | cut -c6-`" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo '' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo 'OBJ    =    $(SRC.c=.o)' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo '' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo 'CFLAGS =    ' "`cat $1 | grep ^'CFLAGS;' | cut -c8-`" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo '' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo 'LDFLAGS =   ' "`cat $1 | grep ^'LDFLAGS;' | cut -c9-`" ' -I' "`cat $1 | grep ^'HEADERS;' | cut -c9-`"  >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo '' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile 
echo 'all : $(NAME)

$(NAME): $(OBJ)
	@$(COMP) $(NAME) $(SRC) && echo -e "\033[32m\nCompilation terminée !\033[00m" || echo -e "\033[31m\n\
Echec de la compilation :($\033[00m"

clean:
        $(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

.PHONY: all clean fclean re
' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile

