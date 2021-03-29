FROM alpine

ARG VERSION
ARG VERSION_R='r0'

COPY ./install_restic.sh /tmp/install_restic.sh

RUN apk add --no-cache curl mariadb-client bash tzdata unzip fuse bzip2 && \
    adduser --disabled-password restic && \
    bash /tmp/install_restic.sh && \
    curl https://rclone.org/install.sh | bash && \
    apk del unzip bash curl bzip2

USER restic

ENTRYPOINT [ "/usr/local/bin/restic" ]
