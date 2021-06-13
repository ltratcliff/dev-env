FROM registry.access.redhat.com/ubi8:latest
LABEL maintainer="Tom Ratcliff ltratcliff@gmail.com"

RUN dnf update && \
    dnf install -y sudo curl git wget vim python39 golang fontawesome-fonts && \
    dnf config-manager --add-repo http://ftp.heanet.ie/pub/centos/8/BaseOS/aarch64/os/ && \
    dnf install -y --nogpgcheck zsh zip java-11-openjdk java-11-openjdk-devel && \
    useradd --shell /bin/zsh --home /home/devuser devuser && \
    echo "devuser:p@ssword1" | chpasswd &&  usermod -aG wheel devuser

ADD scripts/installthemes.sh /home/devuser/installthemes.sh
USER devuser
ENV TERM xterm
ENV ZSH_THEME "powerlevel10k/powerlevel10k"
CMD ["zsh"]
