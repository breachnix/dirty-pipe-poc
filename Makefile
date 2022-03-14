SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin
EXE := $(BIN_DIR)/dirtypipe
SRC := $(wildcard $(SRC_DIR)/*.c)
OBJ := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))
MAKEFLAGS += --silent

.PHONY: all exploit clean

all: $(EXE)

$(EXE): $(OBJ) | $(BIN_DIR)
	$(CC) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) -c $< -o $@

$(BIN_DIR) $(OBJ_DIR):
	mkdir -p $@

exploit:
	./exploit.sh

clean:
	rm -r $(BIN_DIR) $(OBJ_DIR)
