a.out: main.o ll.h
	g++ -g -Wall -fsanitize=address -std=c++17 main.o

main.o: main.cc ll.h
	g++ -g -Wall -fsanitize=address -std=c++17 -c main.cc

clean:
	rm -f a.out core *.o
