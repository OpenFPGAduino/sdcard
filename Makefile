all: img

os:
	ln -s ../rootfs/fs os;
boot:
	mkdir boot;
img: os boot
	mkdir img;
	sudo ./build_sd_card.sh
clean:
	sudo rm -rf boot;
	sudo rm -rf os;
	sudo rm -rf img; 

