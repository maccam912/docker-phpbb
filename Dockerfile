FROM base/archlinux
MAINTAINER Matt Koski <maccam912@gmail.com>

RUN pacman -Syu --noconfirm
RUN echo "[archlinuxfr]\nSigLevel = Never\nServer = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf
RUN pacman -Sy --noconfirm yaourt sqlite
#RUN pacman -Sy --noconfirm phpbb3

#RUN mkdir /Development

#RUN cd /Development && wget https://www.phpbb.com/files/release/phpBB-3.1.1.zip && unzip /Development/*.zip && rm /Development/*.zip
