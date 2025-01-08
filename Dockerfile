FROM docker.io/ubuntu:latest
RUN apt -y update
RUN apt -y install build-essential libreadline-dev libncurses5-dev libssl-dev zlib1g-dev net-tools
WORKDIR /usr/src/app
COPY . .
RUN ./configure
RUN make install
CMD ["sudo","bash","cmd.sh"]
