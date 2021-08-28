CXX = g++
CFLAGS = -static
main: test.o main.o
	@$(CXX) $(CFLAGS) test.o main.o -o main

test.o: test.cpp
	@$(CXX) $(CFLAGS) -c test.cpp

main.o: main.cpp
	@$(CXX) $(CFLAGS) -c main.cpp
	

.PHONY: clean run

clean:
	-@rm *.o
	-@rm main

run: main
	@./main