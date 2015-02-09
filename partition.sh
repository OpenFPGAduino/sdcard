fdisk $1 << EOF
d
1
d
2
d
3
d
4
d

n
p
1
1
+20M
n
p
2

+20M
n
p
3

+256M
n
e


n

+512M
n


t
1
b
t
2
53
p
w
EOF
sudo mount -o loop,offset=$((2048*512)) $1 /mnt/
