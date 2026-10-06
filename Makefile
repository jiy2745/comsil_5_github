cc = gcc
target = animal_exe
objects = dog.o blackcow.o turtle.o main.o

$(target): $(objects)
	$(cc) -o $(target) $(objects)

$(objects) : animal.h

.PHONY : clean
clean :
	rm $(target) $(objects)