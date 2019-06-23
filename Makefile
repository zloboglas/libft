CC=gcc
CFLAGS=-c -Wall -Wextra -Werror 
SOURCES=./ft_lstnew.c ./ft_lstdelone.c ./ft_lstdel.c  ./ft_lstadd.c  ./ft_lstiter.c  ./ft_lstmap.c  ./ft_memset.c  ./ft_isalpha.c  ./ft_isdigit.c  ./ft_isascii.c  ./ft_isprint.c  ./ft_bzero.c  ./ft_isalnum.c  ./ft_toupper.c  ./ft_tolower.c  ./ft_memchr.c  ./ft_strchr.c  ./ft_strrchr.c  ./ft_memcpy.c  ./ft_strcpy.c  ./ft_strcat.c  ./ft_strncpy.c  ./ft_strncat.c  ./ft_strstr.c  ./ft_strnstr.c  ./ft_memmove.c  ./ft_memcmp.c  ./ft_strlcat.c  ./ft_strdup.c  ./ft_memccpy.c  ./ft_putchar.c  ./ft_putnbr.c  ./ft_strcmp.c  ./ft_strncmp.c  ./ft_putstr.c  ./ft_atoi.c  ./ft_strlen.c  ./ft_memalloc.c  ./ft_memdel.c  ./ft_strnew.c  ./ft_strdel.c  ./ft_strclr.c  ./ft_striter.c  ./ft_striteri.c  ./ft_strmap.c  ./ft_strmapi.c  ./ft_strequ.c  ./ft_strnequ.c  ./ft_strsub.c  ./ft_strjoin.c  ./ft_putendl.c  ./ft_putchar_fd.c  ./ft_putstr_fd.c  ./ft_putendl_fd.c  ./ft_putnbr_fd.c  ./ft_strtrim.c  ./ft_strsplit.c  ./ft_itoa.c  ./ft_strclen.c  ./ft_strcfind.c  ./ft_rmfirstn.c  ./ft_cpfirstn.c ./ft_newavltree.c ./ft_search.c ./ft_insert.c ./ft_remove.c ./ft_balance.c ./ft_overcat.c
OBJECTS=./*.o
NAME=libft.a

all: $(NAME)


$(NAME): $(OBJECTS) 
	ar -rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

$(OBJECTS): $(SOURCES) 
	$(CC) $(CFLAGS) -I ./includes/ $(SOURCES) 

clean: 
	rm -rf *.o

fclean:
	rm -rf *.o $(NAME)

re: fclean all 