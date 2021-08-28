main: test.o main.o
	g++ test.o main.o -o main

test.o: test.cpp
	g++ -c test.cpp

main.o: main.cpp
	g++ -c main.cpp

.PHONY: clean run

clean:
	-rm *.o
	-rm main

run: main
	./main