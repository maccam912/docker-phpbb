FROM base/archlinux
MAINTAINER Matt Koski <maccam912@gmail.com>

RUN pacman -Syu --noconfirm

RUN curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz && tar zxvf package-query.tar.gz && cd package-query && makepkg --asroot -si
RUN curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz && tar zxvf yaourt.tar.gz && cd yaourt && makepkg --asroot -si

RUN pacman -Sy --noconfirm sqlite

#RUN pacman -Sy --noconfirm phpbb3

#RUN mkdir /Development

#RUN cd /Development && wget https://www.phpbb.com/files/release/phpBB-3.1.1.zip && unzip /Development/*.zip && rm /Development/*.zip
