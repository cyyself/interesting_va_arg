CXX = g++

main: test.o main.o
	$(CXX) -static test.o main.o -o main

test.o: test.cpp
	$(CXX) -c test.cpp

main.o: main.cpp
	$(CXX) -c main.cpp

.PHONY: clean run

clean:
	-rm *.o
	-rm main

run: main
	./main