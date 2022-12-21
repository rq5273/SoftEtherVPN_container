FROM docker.io/fedora:latest
RUN dnf -y groupinstall "Development Tools"
RUN dnf -y install readline-devel ncurses-devel openssl-devel net-tools
WORKDIR /usr/src/app
COPY . .
RUN ./configure
RUN make install
CMD ["sudo","bash","cmd.sh"]