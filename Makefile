SIZE = 100kB
OBJ=img
IMG=openfpgaduino.img
all:
	mkdir $(OBJ);
	mkdir boot;
	mkdir os;
	dd if=/dev/zero of=$(OBJ)/$(IMG) count=$(SIZE)
	./partition.sh $(OBJ)/$(IMG)
image:
	sudo mount -o loop,offset=158334976 $(OBJ)/$(IMG) /media/
	sudo cp -rpf os/* /media/	
	sudo umount /media/
	sudo mount -o loop,offset=1048576 $(OBJ)/$(IMG) /media/
	sudo cp -rf boot/* /media/ 
	sudo umount /media/
clean:
	rm -rf boot;
	rm -rf os;
	rm -rf $(OBJ); 

