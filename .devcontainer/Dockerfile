FROM devkitpro/devkitarm:latest

## 1. Install xpra for x forwarding GUI apps like libresprite
# Get xpra key
RUN wget -O /usr/share/keyrings/xpra.asc https://xpra.org/xpra.asc
# Get xpra-lts.sources for bookworm
RUN wget -O /etc/apt/sources.list.d/xpra-lts.sources \
    https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bookworm/xpra-lts.sources
# Update and install xpra
RUN apt-get update && apt-get install -y xpra


ARG LIBRESPRITE_VERSION=1.2
ARG LIBRESPRITE_APPIMAGE=LibreSprite-anylinux-x86_64.AppImage
ARG LIBRESPRITE_URL=https://github.com/LibreSprite/LibreSprite/releases/download/v${LIBRESPRITE_VERSION}/${LIBRESPRITE_APPIMAGE}

# Make /tools and download LibreSprite AppImage
# Extract the AppImage to work around lack of FUSE support
# Symlink to put on PATH
RUN mkdir -p /tools && \
    curl -fL "${LIBRESPRITE_URL}" -o /tools/${LIBRESPRITE_APPIMAGE} && \
    chmod +x /tools/${LIBRESPRITE_APPIMAGE} && \
    /tools/${LIBRESPRITE_APPIMAGE} --appimage-extract && \
    mv /tools/squashfs-root /tools/libresprite && \
    rm -f /tools/${LIBRESPRITE_APPIMAGE} && \
    ln -sf /tools/libresprite/AppRun /usr/local/bin/libresprite

