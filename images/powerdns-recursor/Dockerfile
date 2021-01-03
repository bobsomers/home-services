FROM archlinux:base
LABEL maintainer="bob@bobsomers.com"

RUN pacman -Syu --noconfirm powerdns-recursor ldns

RUN mkdir -p /var/run/pdns-recursor
COPY recursor.conf /etc/powerdns/recursor.conf
COPY run.sh /root/run.sh

ENTRYPOINT ["/root/run.sh"]

EXPOSE 53
EXPOSE 53/udp
