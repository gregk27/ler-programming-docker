FROM wpilib/roborio-cross-ubuntu:2020-18.04
#Install vim
RUN apt-get -y update
RUN apt-get -y install vim
#Migrate files in local dir
COPY . /root/
COPY ./git-hooks/* /root/git-hooks
WORKDIR /root/
#Setup git
RUN git config --global user.name "LER-Programming"
RUN git config --global user.email "github.lakeeffectrobotics@gmail.com"
RUN git config --global core.hooksPath /root/git-hooks