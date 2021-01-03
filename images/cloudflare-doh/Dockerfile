FROM archlinux:base-devel
LABEL maintainer="bob@bobsomers.com"

RUN pacman -Syu --noconfirm sudo

# Create a build user since makepkg doesn't run as root.
RUN useradd -m build
RUN passwd -d build
RUN printf 'build ALL=(ALL) ALL \n' | tee -a /etc/sudoers

WORKDIR /home/build
RUN sudo -u build curl https://aur.archlinux.org/cgit/aur.git/snapshot/cloudflared-bin.tar.gz --output cloudflared-bin.tar.gz
RUN sudo -u build tar xvf cloudflared-bin.tar.gz

WORKDIR /home/build/cloudflared-bin
RUN sudo -u build makepkg --syncdeps --install --noconfirm

ENTRYPOINT ["/usr/bin/cloudflared", "proxy-dns", "--address", "0.0.0.0", "--port", "5300"]

EXPOSE 5300
EXPOSE 5300/udp
