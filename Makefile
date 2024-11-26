# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ineimatu <ineimatu@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/04 09:40:27 by ineimatu          #+#    #+#              #
#    Updated: 2024/11/26 16:11:55 by ineimatu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = philo

SRC = main.c utils.c parsing.c init_struct.c utils_dinner.c dinner.c

CC = gcc

FLAGS = -Wall -Wextra -Werror #-fsanitize=address #-pthread

HEADER = inc/philo.h

OBJ = $(SRC:.c=.o)

RM = rm -f

%.o: %.c Makefile $(HEAD)
	$(CC) $(FLAGS) -c $< -o $@

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(FLAGS) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
