all:msg_r msg_w
msg_r:msg_r.o
	g++ -g -o msg_r msg_r.cpp
msg_w:msg_w.o
	g++ -g -o msg_w msg_w.cpp
msg_w.o:msg_r.cpp
	g++ -g -c msg_r.cpp
msg_r.o:msg_w.cpp
	g++ -g -c msg_w.cpp
