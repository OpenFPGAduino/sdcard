all:

os:
	ln -s ../rootfs/fs os;
boot:
	mkdir boot;
image: os boot
	mkdir img;
	sudo ./build_sd_card.sh
clean:
	sudo rm -rf boot;
	sudo rm -rf os;
	sudo rm -rf img; 

