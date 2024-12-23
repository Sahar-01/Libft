# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scheragh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/11 17:34:27 by scheragh          #+#    #+#              #
#    Updated: 2024/12/23 12:13:34 by scheragh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f
AR = ar

SRC = ft_isalpha.c  \
      ft_isdigit.c \
      ft_isalnum.c \
      ft_isascii.c \
      ft_isprint.c \
      ft_strlen.c \
      ft_memset.c \
      ft_bzero.c \
      ft_memcpy.c \
      ft_memmove.c \
      ft_strlcpy.c \
      ft_strlcat.c \
      ft_toupper.c \
      ft_tolower.c \
      ft_strchr.c \
      ft_strrchr.c \
      ft_strncmp.c \
      ft_memchr.c \
      ft_memcmp.c \
      ft_strnstr.c \
      ft_atoi.c \
      ft_calloc.c \
      ft_strdup.c \
      ft_substr.c \
      ft_strjoin.c \
      ft_strtrim.c \
      ft_split.c \
	  ft_itoa.c \
	  ft_strampi.c \
	  ft_striteri.c \
	  ft_putchar_fd.c \
	  ft_putstr_fd.c \
	  ft_putendl_fd.c \
	  ft_putnbr_fd.c

BONUSSRC = ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c
OBJ = $(SRC:.c=.o)
BONUSOBJ = $(BONUSSRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) rcs $(NAME) $(OBJ)

# Bonus target that should add the bonus object files to the library
bonus: $(OBJ) $(BONUSOBJ)
	$(AR) rcs $(NAME) $(OBJ) $(BONUSOBJ)

# Rule to compile any .c file into .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ) $(BONUSOBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus

