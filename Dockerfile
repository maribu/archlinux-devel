FROM archlinux/base@sha256:2d30966655b26e7165ed76e29ba8160907d87f388d4647dbc3947d65720759e8

LABEL description="Arch Linux with git, gcc, clang, and make"
LABEL maintainer="Marian Buschsieweke <marian.buschsieweke@ovgu.de>"

RUN pacman -Syu --noconfirm gcc make clang git diffutils && yes | pacman -Scc && rm -rf /var/lib/pacman/sync/*
