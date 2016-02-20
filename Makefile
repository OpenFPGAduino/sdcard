OBJ=img
all:
	mkdir $(OBJ);
	mkdir boot;
	ln -s ../rootfs/fs os;
image:
	sudo ./build_sd_card.sh
clean:
	sudo rm -rf boot;
	sudo rm -rf os;
	sudo rm -rf $(OBJ); 

