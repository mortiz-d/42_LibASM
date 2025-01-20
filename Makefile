# COLORS #
GREEN = @echo "\033[0;32m"
BLUE = @echo "\033[0;34m" 
PURPLE = @echo "\033[0;35m"
CYAN = @echo "\033[0;36m"
YELLOW = @echo "\033[1;33m"
RESET = "\033[1;0m"

# DIRECTORIES #
SRC_DIR = srcs
OBJ_DIR = objetos

# RESOURCES #
SRCS = $(SRC_DIR)/ft_strlen.s \
       $(SRC_DIR)/ft_strcpy.s \
       $(SRC_DIR)/ft_strcmp.s \
       $(SRC_DIR)/ft_write.s \
       $(SRC_DIR)/ft_read.s \
       $(SRC_DIR)/ft_strdup.s

# FLAGS #
OBJS = $(SRCS:$(SRC_DIR)/%.s=$(OBJ_DIR)/%.o)

NAME = libasm.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra

AR = ar rcs

# Instructions #
all: $(OBJ_DIR) $(NAME)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(NAME): $(OBJS)
	@echo $(YELLOW) "Compiling program" $(RESET)
	${AR} ${NAME} ${OBJS}

# %.o: %.s 
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	@echo $(CYAN) "Assembling $<" $(RESET)
	nasm -f elf64 $< -o $@

clean:
	@$(PURPLE) Cleaning LIBFT Objects $(RESET)
	@rm -rf $(OBJ_DIR)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re strlen strcpy strcmp write read strdup

strlen:
	@$(YELLOW) Compiling Test $(RESET)
	$(CC) $(CFLAGS) test/ft_strlen_main.c $(NAME) -o test_strlen
	@$(GREEN) Executing Test $(RESET)
	./test_strlen
	@$(PURPLE) Cleaning Test $(RESET)
	rm test_strlen

strcpy:
	@$(YELLOW) Compiling Test $(RESET)
	$(CC) $(CFLAGS) test/ft_strcpy_main.c $(NAME) -o test_strcpy
	@$(GREEN) Executing Test $(RESET)
	./test_strcpy
	@$(PURPLE) Cleaning Test $(RESET)
	rm test_strcpy

strcmp:
	@$(YELLOW) Compiling Test $(RESET)
	$(CC) $(CFLAGS) test/ft_strcmp_main.c $(NAME) -o test_strcmp
	@$(GREEN) Executing Test $(RESET)
	./test_strcmp
	@$(PURPLE) Cleaning Test $(RESET)
	rm test_strcmp

write:
	@$(YELLOW) Compiling Test $(RESET)
	$(CC) $(CFLAGS) test/ft_write_main.c $(NAME) -o test_write
	@$(GREEN) Executing Test $(RESET)
	./test_write
	@$(PURPLE) Cleaning Test $(RESET)
	rm test_write

read:
	@$(YELLOW) Compiling Test $(RESET)
	$(CC) $(CFLAGS) test/ft_read_main.c $(NAME) -o test_read
	@$(GREEN) Executing Test $(RESET)
	./test_read
	@$(PURPLE) Cleaning Test $(RESET)
	rm test_read






# # COLORS #
# GREEN = @echo "\033[0;32m"
# BLUE = @echo "\033[0;34m" 
# PURPLE = @echo "\033[0;35m"
# CYAN = @echo "\033[0;36m"
# RESET = "\033[1;0m"

# # RESOURCES #
# SRCS =	srcs/ft_strlen.s \
# 		srcs/ft_strcpy.s \
# 		srcs/ft_strcmp.s \
# 		srcs/ft_write.s	\
# 		srcs/ft_read.s	\
# 		srcs/ft_strdup.s
		


# # FLAGS #
# OBJS = ${SRCS:.s=.o}

# NAME = libasm.a

# CC = gcc #-fPIE

# CFLAGS = -Wall -Werror -Wextra

# AR = ar rcs


# # Instructions #
# all:${NAME}

# # ${NAME}: ${OBJS}
# # 	$(BLUE) Ensambling LIBFT Library $(RESET)	
# # 	${AR} ${NAME} ${OBJS}
# # 	$(BLUE) LIBFT Library Ensambled $(RESET)	
	
# # %.o:	%.c 
# # 	$(CYAN) Compiling LIBFT Object $< $(RESET)
# # 	$(CC) $(CFLAGS) -c $<

# ${NAME}: ${OBJS}
# 	@echo $(BLUE) "Compiling program" $(RESET)
# 	${AR} ${NAME} ${OBJS}	
# #${CC} ${CFLAGS} main.c ${OBJS} -o ${NAME}

# # %.o:	%.s 
# # 	$(CYAN) Compiling LIBFT Object $< $(RESET)
# # 	$(CC) $(CFLAGS) -c $<

# %.o: %.s
# 	@echo $(CYAN) "Assembling $<" $(RESET)
# 	nasm -f elf64 $< -o $@

# clean:
# 	$(PURPLE) Cleaning LIBFT Objects $(RESET)
# 	@rm -rf ${OBJS}
# fclean: clean
# 	rm -rf ${NAME}

# re: fclean all

# .PHONY: all clean fclean re 