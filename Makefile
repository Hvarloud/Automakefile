##
## Makefile for Makefile in /home/pliso_c/Piscine/Synthese/automakefile
## 
## Made by christian pliso
## Login   <pliso_c@epitech.net>
## 
## Started on  Mon Jun 22 12:23:21 2015 christian pliso
## Last update Mon Jun 22 12:52:42 2015 christian pliso
##

NAME	=	

SRC	=	

OBJ	=	$(SRC:.c=.o)

COMP	= 	

CFLAGS	=	

LDFLAGS	=	

RM	=	rm -f

all:		$(NAME)

$(NAME): 	$(OBJ)
		$(COMP) $(NAME) $(SRC)

clean:
		$(RM) $(OBJ)

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONHY:	all clean fclean re
