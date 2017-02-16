FROM kalilinux/kali-linux-docker

RUN apt-get update && apt-get install gnuradio -y
