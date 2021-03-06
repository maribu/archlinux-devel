FROM archlinux/base:latest

LABEL description="Arch Linux with git, gcc, clang, and make"
LABEL maintainer="Marian Buschsieweke <marian.buschsieweke@ovgu.de>"

RUN pacman -Syu --noconfirm gcc make clang git diffutils arm-none-eabi-newlib \
	arm-none-eabi-gcc avr-libc which p7zip python3 bluez && yes | pacman -Scc && rm -rf /var/lib/pacman/sync/*
