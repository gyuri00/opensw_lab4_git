PROJ_DIR = $(shell pwd)
SRC_DIR = $(PROJ_DIR)/src
INC_DIR = $(PROJ_DIR)/include
OBJ_DIR = $(PROJ_DIR)/obj
BIN_DIR = $(PROJ_DIR)/bin

$(BIN_DIR)/myshell: $(OBJ_DIR)/myshell.o
	gcc -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	gcc -c -o $@ $< -I$(INC_DIR)

clean:
	rm -f $(OBJ_DIR)/*.o$(BIN_DIR)/myshell

distclean:
	rm -f $(OBJ_DIR)/*.o $(BIN_DIR)/myshell
	rm -rf $(OBJ_DIR) $(BIN_DIR)