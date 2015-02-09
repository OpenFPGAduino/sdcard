SIZE = 100kB
OBJ=img
IMG=openfpgaduino.img
all:
	rm -rf $(OBJ); 
	mkdir $(OBJ);
	dd if=/dev/zero of=$(OBJ)/$(IMG) count=$(SIZE)
	./partition.sh $(OBJ)/$(IMG)
