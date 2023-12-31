NAME = libft.a

SRC = ft_memset.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_bzero.c \
                ft_isalnum.c ft_isprint.c ft_toupper.c ft_tolower.c \
                 ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_strlen.c \
                 ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_isascii.c \
                 ft_calloc.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
                 ft_memmove.c ft_strdup.c ft_putnbr_fd.c ft_putstr_fd.c \
                 ft_putchar_fd.c ft_itoa.c ft_putendl_fd.c ft_substr.c \
                 ft_strjoin.c ft_strtrim.c ft_strmapi.c ft_striteri.c \
                 ft_split.c

SRCB = ft_lstnew.c ft_lstadd_front.c ft_lstlast.c ft_lstadd_back.c \
                    ft_lstsize.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
                    ft_lstmap.c

OBJS = $(SRC:.c=.o)
OBJB = $(SRCB:.c=.o)


CC	=	gcc
RM	=	rm -f
FLAGS	= -Wall -Wextra -Werror


all: $(NAME)

$(NAME): 
		$(CC) $(FLAGS) -c $(SRC) 
		ar rc $(NAME) $(OBJS)

bonus: $(OBJS) $(OBJB)
		$(CC) $(FLAGS) -c $(SRCB)
		ar rc $(NAME) $(OBJS) $(OBJB)

clean:
		$(RM) $(OBJS) 
		$(RM) $(OBJB)

fclean: clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
