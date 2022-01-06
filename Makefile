NAME	= libft.a

HEADER 	= libft.h

MAN_SOR	=	ft_isalpha.c \
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
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \


BON_SOR =	ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c \

MAN_OBJS	= ${MAN_SOR:.c=.o}
BON_OBJS	= ${BON_SOR:.c=.o}


GCC		= gcc -Wall -Wextra -Werror

AR 		= ar -rcs

RM 		= rm -f

.c.o:
		${GCC} -c $< -o ${<:.c=.o} -I${HEADER}


$(NAME):	${MAN_OBJS}
		${AR} ${NAME} ${MAN_OBJS}

all: ${NAME}

bonus:		${BON_OBJS}
		${AR} ${NAME} ${BON_OBJS}

clean:
		${RM} ${MAN_OBJS} ${BON_OBJS}

fclean: 	clean
			${RM} ${NAME}

re: 		fclean all bonus