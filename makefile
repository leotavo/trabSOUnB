# compilador
CC=clang++

# bibliotecas
LIBS = -std=c++11 -Wall

all: clean at scheduler execution_manager hello_world

scheduler:
	$(CC) $(LIBS) -o scheduler scheduler.cpp

execution_manager:
	$(CC) $(LIBS) -o execution_manager execution_manager.cpp

at:
	$(CC) $(LIBS) -o at at.cpp

hello_world:
	$(CC) $(LIBS) -o hello_world hello_world.cpp
	
hypercube:
	$(CC) $(LIBS) hypercube.cpp -o hypercube

clean:
	rm -f execution_manager
	rm -f hello_world
	rm -f scheduler
	rm -f at
	rm -f hypercube
