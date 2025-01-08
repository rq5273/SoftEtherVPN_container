FROM docker.io/ubuntu:latest
RUN apt -y update
RUN dnf -y install build-essential readline-devel ncurses-devel openssl-devel net-tools
WORKDIR /usr/src/app
COPY . .
RUN ./configure
RUN make install
CMD ["sudo","bash","cmd.sh"]
