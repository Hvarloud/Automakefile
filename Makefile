##
## Makefile for Makefile in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 12:23:21 2015 christian pliso
## Last update Tue Jun 23 14:27:35 2015 christian pliso
##

NAME	=	

SRC	= 

OBJ	=	$(SRC:.c=.o)

COMP	= 	gcc	

LIBS	=

CFLAGS	=	

LDFLAGS	=	

RM	= 	rm -f

WHITE	=	\e[0m

GREEN 	=	\e[33;32m

RED	=	\e[33;31m

all:		$(NAME)

$(NAME): 	$(OBJ)
		@$(COMP) -o $(NAME) $(OBJ) $(CDFLAGS) $(LDFLAGS) && echo -e "$(GREEN)\nCompilation terminée !$(WHITE)" || echo -e "$(RED)\nEchec de la compilation :($(WHITE)"

%.o:    	%.c
		@$(COMP) -o $@ $^ -I ./include -o $@
		@printf "Compilation de "
		@tput setf 4
		@printf "%s\n" $(patsubst /%,%,$^)
		@$(CC) -c -o $@ $^
		@tput sgr0
		@tput cuf 70
		@tput cuu1
		@printf "["
		@tput setf 2
		@printf "OK"
		@tput sgr0
		@printf "]\n"

clean:
		@$(RM) $(OBJ)
		@echo -e "$(GREEN)Nettoyage des objets exécuté.$(WHITE)"

fclean:		clean
		@$(RM) $(NAME)
		@echo -e "$(GREEN)Suppression du binaire terminée.$(WHITE)"

re:		fclean all

.PHONHY:	all clean fclean re
