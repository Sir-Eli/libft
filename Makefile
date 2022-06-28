# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esirnio <esirnio@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/08 16:33:11 by esirnio           #+#    #+#              #
#    Updated: 2022/06/28 13:41:52 by esirnio          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c\
		ft_isprint.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c\
		ft_memset.c ft_strcat.c ft_strchr.c ft_strcmp.c ft_strcpy.c ft_strdup.c\
		ft_strlcat.c ft_strlen.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strrchr.c\
		ft_strstr.c ft_strnstr.c ft_toupper.c ft_tolower.c ft_putchar.c ft_putnbr.c\
		ft_putendl.c ft_putchar_fd.c ft_itoa.c ft_putstr.c ft_strequ.c ft_strnequ.c\
		ft_strjoin.c ft_isspace.c ft_strtrim.c ft_strsplit.c ft_memalloc.c\
		ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c\
		ft_strmap.c ft_strmapi.c ft_strsub.c ft_putstr_fd.c ft_putnbr_fd.c\
		ft_putendl_fd.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c\
		ft_lstmap.c ft_intlen.c ft_free_array.c get_next_line.c ft_itoa_base.c
OBJ = *.o
COMP = gcc -c
FLAGS = -Wall -Wextra -Werror
HEADS = libft.h

all: $(NAME)

$(NAME):
	@$(COMP) $(FLAGS) $(HEADS) $(SRCS)
	@ar rcs $(NAME) $(OBJ)
	@echo make done
clean:
	rm -f $(OBJ)
	rm -f *.gch
fclean: clean
	rm -f $(NAME)
re: fclean all

.PHONY: all clean fclean re
