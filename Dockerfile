FROM archlinux:latest

RUN pacman -Syu --noconfirm \
    flatpak \
    elfutils \
    patch \
    ed \
    python-ruamel-yaml \
    python-gobject \
    flatpak-builder

RUN flatpak install -y org.kde.Platform//5.15-21.08
RUN flatpak install -y org.kde.Sdk//5.15-21.08

COPY rewrite /usr/bin/rewrite
COPY fetch-deps /usr/bin/fetch-deps
