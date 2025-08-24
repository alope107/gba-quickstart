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
RUN mkdir -p /tools
WORKDIR /tools
RUN curl -fL "${LIBRESPRITE_URL}" -o ${LIBRESPRITE_APPIMAGE} && \
    chmod +x ${LIBRESPRITE_APPIMAGE} && \
    ./${LIBRESPRITE_APPIMAGE} --appimage-extract && \
    mv squashfs-root libresprite && \
    rm ${LIBRESPRITE_APPIMAGE} && \
    ln -sf /tools/libresprite/AppRun /usr/local/bin/libresprite

# Set up libresprite so it scales properly in xpra
RUN mkdir -p /root/.config/libresprite
COPY libresprite.ini /root/.config/libresprite/libresprite.ini