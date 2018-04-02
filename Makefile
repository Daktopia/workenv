# Compiler and Compile options.
CC = g++
CXXFLAGS = -g -Wall -std=c++11

# Macros specifying path for compile.
SRCS := $(wildcard *.cpp)
OBJS := $(SRCS:.cpp=.o)
EXES := $(basename $(SRCS))
INC = ./include/
LIB = ./lib/ -lpthread

# Pre-Processor.
CPPFLAGS += -I$(INC)

# Compile command.
all: $(EXES)

$(EXES):
	$(CC) $(CXXFLAGS) $(CPPFLAGS) -o $@ $@.cpp -L$(LIB)





# Delete binary & object files.
clean:
	$(RM) $(EXES)
