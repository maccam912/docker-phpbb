FROM base/archlinux
MAINTAINER Matt Koski <maccam912@gmail.com>

RUN echo "[archlinuxfr]" >> /etc/pacman.conf
RUN echo "SigLevel = Never" >> /etc/pacman.conf
RUN echo "Server = http://repo.archlinux.fr/x86_64/" >> /etc/pacman.conf
RUN pacman -Syu --noconfirm
RUN pacman -Sy --noconfirm yaourt sqlite binutils
RUN yaourt -Sy --noconfirm phpbb3 php-sqlite apache2
RUN systemctl start apache

#RUN mkdir /Development

#RUN cd /Development && wget https://www.phpbb.com/files/release/phpBB-3.1.1.zip && unzip /Development/*.zip && rm /Development/*.zip
