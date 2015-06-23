##
## Makefile for Makefile in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 12:23:21 2015 christian pliso
## Last update Tue Jun 23 21:31:52 2015 christian pliso
##

NAME	= 	Executable

SRC	= 

OBJ	=	$(SRC:.c=.o)

COMP	=	cc

LIBS	=

CFLAGS	+=	

LDFLAGS	=	

RM	= 	rm -f

all:		$(NAME)

$(NAME): 	$(OBJ)
		@$(COMP) -o $(NAME) $(OBJ) $(LDFLAGS) && echo -e "\033[32mCompilation terminée !\033[00m" || echo -e "\033[31mEchec de la compilation :(\033[00m"

%.o:		%.c
		@$(COMP) -c -o $@ $^ $(CFLAGS)

clean:
		@$(RM) $(OBJ) && echo -e "\033[32mNettoyage des objets exécuté.\033[00m" || echo -e "\O33[31mNettoyage des objets echoué\[\e[0m\]"

fclean:		clean
		@$(RM) $(NAME) && echo -e "\033[32mSuppression du binaire terminée.\033[00m" || echo -e "\033[31mEchec de la suppression.\[\e[0m\]"

re:		fclean all

.PHONHY:	all clean fclean re
