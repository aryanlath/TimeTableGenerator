CPP = g++ 
FLAGS = -O3 -pg -Wall -W
RM  = rm -f
EXEC = Prog1

OBJECTS = \
	 tt.o \
	 read1.o \

all: $(OBJECTS) compile touch 

tt.o : tt.cpp
					 $(CPP) $(FLAGS) -c tt.cpp
read1.o : read1.cpp
			   		 $(CPP) $(FLAGS) -c read1.cpp
clean:  
					 $(RM) $(OBJECTS) $(EXEC) 

compile: 
					 $(CPP) $(FLAGS) $(OBJECTS) -o $(EXEC) 

touch:
					 @echo " "
					 @echo "Compilation done successfully..................."
					 @echo " "
