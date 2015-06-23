#!/bin/sh
## automakefile.sh for automakefile in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 12:53:12 2015 christian pliso
## Last update Tue Jun 23 16:09:36 2015 christian pliso
##

mkdir -p "`cat $1 | grep ^'REP;' | cut -c5- `"
mkdir -p ./"`cat $1 | grep ^'REP;' | cut -c5- `"/"`cat $1 | grep ^'HEADERS;' | cut -c9-`"
mkdir -p ./"`cat $1 | grep ^'REP;' | cut -c5- `"/"`cat $1 | grep ^'SOURCES;' | cut -c9-`"
mkdir -p ./"`cat $1 | grep ^'REP;' | cut -c5- `"/"`cat $1 | grep ^'LIBS;'| cut -c6- `"
mkdir -p ./"`cat $1 | grep ^'REP;' | cut -c5- `"/"`cat $1 | grep ^'REP_SVG;'| cut -c9- `"

echo "NAME   =    `cat $1 | grep ^'EXEC;' | cut -c6-`
" > ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "COMP   =    `cat $1 | grep ^'COMP;' | cut -c6-`
" > ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "SRC_DIR =    `cat $1 | grep ^'SOURCES;'| cut -c9-`/
" >> ./"`cat $1 | grep ^'REP;'| cut -c5- `"/Makefile
echo "SRC    =    `cat $1 | sed -e "s/;/\n/g" | grep ".*\.c$" | awk -e '{print "	", $1, "\134"}'`
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "CFLAGS =    `cat $1 | grep ^'CFLAGS;' | cut -c8-`
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "LDFLAGS =   `cat $1 | grep ^'LDFLAGS;' | cut -c9-`
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "HEA_DIR =   `cat $1 | grep ^'HEA_DIR;' | cut -c9-`/
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "LIB_DIR =   `cat $1 | grep ^'LIB_DIR;' | cut -c9-`/
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "ZIP_DIR =   `cat $1 | grep ^'LIB_DIR;' | cut -c9-`/
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "ZIP     =   `cat $1 | grep ^'ZIP;' | cut -c5-`
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile
echo "UNZIP   =   `cat $1 | grep ^'UNZIP;' | cut -c7-`
" >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile

echo 'SRC_PATH = $(addprefix $(SRC_DIR), $(SRC))

OBJ    =    $(SRC.c=.o)

all : $(NAME)

$(NAME): $(OBJ)
	@$(COMP) $(NAME) $(SRC_PATH) && echo -e "\033[32m\nCompilation terminée !\033[00m" || echo -e "\033[31m\n\
Echec de la compilation :($\033[00m"

clean:
        $(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean all

archive:
	@ zip "$(ZIP)" $(addprefix $(ZIP_DIR), $(NAME)) $(COUNT).zip $(SRC_DIR) Makefile $(HEAD_DIR) $(LIB_DIR) && echo -e "\033[32mCreation de la sauvegarde OK\O33[OOm" || echo -e "\033[31mCreation de la sauvegarde KO\033[00m"
	@ ./.count archive

revert:
	@./.count GET_OLD "$(UNZIP)" "$(UNZIP_FLAGS)" $(addprefix $(ZIP_DIR), $(NAME)) && echo -e "\O33[32mDecompression de la sauvegarde OK\033[00m" || echo -e "\O33[031mDecompression de la sauvegarde KO\033[00m"

num:
	@./.count GET

delete:
	@./.count DELETE $(addprefix $(ZIP_DIR), $(NAME))

.PHONY: all clean fclean re
' >> ./"`cat $1 | grep ^'REP;' | cut -c5- `"/Makefile

echo '#!/bin/bash
count=$(echo $(sed -nr "s/.*COUNT=([0-9]*)/\1/p" Makefile) + 1 | bc);

case $1 in
     "GET")
	counti=$(echo $(sed -nr "s/.*COUNT=([O-9]*)/\1/p" Makefile))
	echo "The number saved is $counti"
	;;
     "GET_OLD")
	old=$(echo "$count - 2" | bc)
	$2 $3 "$(echo -n $4 | sed "s/ //g")_$old_zip"
	;;
     "DELETE")
	old=$(echo "$count - 2" | bc)
	rm "$(echo -n $2 | sed "s/ //g")_$old.zip"
	;;
     *)
     sed -i "s/COUNT=.*/$(echo COUNT=$count)/" Makefile
     ;;
esac' > ./"`cat $1 | grep ^'REP;' | cut -c5- `"/.count

chmod 777 ./"`cat $1 | grep ^'REP;' | cut -c5-`"/.count
