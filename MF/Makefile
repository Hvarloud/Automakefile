##
## Makefile for Makefile in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 12:23:21 2015 christian pliso
## Last update Tue Jun 23 16:02:26 2015 christian pliso
##

NAME	=	

SRC	= 

OBJ	=	$(SRC:.c=.o)

COMP	= 

LIBS	=

CFLAGS	+=	

LDFLAGS	=	

RM	= 

all:		$(NAME)

$(NAME): 	$(OBJ)
		@$(COMP) -o $(NAME) $(OBJ) $(LDFLAGS) && echo -e "$(GREEN)\nCompilation terminée !$(WHITE)" || echo -e "$(RED)\nEchec de la compilation :($(WHITE)"

%.o:    	%.c
		@$(COMP) -o $@ $^ $(CFLAGS)

clean:
		@$(RM) $(OBJ) echo -e "\033[32mNettoyage des objets exécuté.\033[00m" || echo -e "\O33[31Nettoyage des objets echoué\033[00m"

fclean:		clean
		@$(RM) $(NAME) echo -e "\033[32Suppression du binaire terminée.$(WHITE)" || echo -e "\033[31Echec de la suppression.\O33[OOm"

re:		fclean all

.PHONHY:	all clean fclean re
