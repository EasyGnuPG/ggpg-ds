FROM ubuntu:18.04

### install systemd
RUN apt update && \
    apt -y upgrade && \
    apt -y install systemd && \
    systemctl set-default multi-user.target

CMD ["/sbin/init"]
WORKDIR /host/ggpg

### install dependencies
RUN apt -y install gnupg2 pinentry-tty haveged libgfshare-bin parcimonie \
        qrencode imagemagick zbar-tools wget coreutils psmisc make

### install ronn to make the man pages
RUN apt -y install ruby-dev gcc && \
    gem install ronn

### install jekyll for testing gh-pages locally
RUN apt -y install jekyll

### install man to test man pages locally inside container
RUN apt -y install less man

### install xephyr to run GUI
RUN apt -y install xserver-xephyr
### install ggpg dependencies
RUN apt -y install python3-gi python3-gi-cairo gir1.2-gtk-3.0 python3-pip
RUN pip3 install pygobject
