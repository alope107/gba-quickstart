FROM devkitpro/devkitarm:latest

# Install xpra for x forwarding GUI apps like libresprite
# Install supervisor to nanny xpra and the emulator webserver
# Get xpra key
RUN wget -O /usr/share/keyrings/xpra.asc https://xpra.org/xpra.asc && \
    wget -O /etc/apt/sources.list.d/xpra-lts.sources \
    https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bookworm/xpra-lts.sources && \
    apt-get update && \
    apt-get install -y xpra supervisor && \
    rm -rf /var/lib/apt/lists/*


ARG LIBRESPRITE_VERSION=1.2
ARG LIBRESPRITE_APPIMAGE=LibreSprite-anylinux-x86_64.AppImage
ARG LIBRESPRITE_URL=https://github.com/LibreSprite/LibreSprite/releases/download/v${LIBRESPRITE_VERSION}/${LIBRESPRITE_APPIMAGE}

# Make /tools and download LibreSprite AppImage
# Extract the AppImage to work around lack of FUSE support
RUN mkdir -p /tools
WORKDIR /tools
RUN curl -fL "${LIBRESPRITE_URL}" -o ${LIBRESPRITE_APPIMAGE} && \
    chmod +x ${LIBRESPRITE_APPIMAGE} && \
    ./${LIBRESPRITE_APPIMAGE} --appimage-extract && \
    mv squashfs-root libresprite && \
    rm ${LIBRESPRITE_APPIMAGE}

# Set up libresprite so it scales properly in xpra
RUN mkdir -p /root/.config/libresprite
COPY libresprite.ini /root/.config/libresprite/libresprite.ini

# Set up Emulator.js server to be handled by supervisord
COPY emuserver.sh /scripts/emuserver.sh
COPY emuserver.conf /etc/supervisor/conf.d/

# Set up xpra server (used for LibreSprite)  to be handled by supervisord
COPY xpraserver.sh /scripts/xpraserver.sh
COPY xpraserver.conf /etc/supervisor/conf.d/

COPY emuserver/ /emuserver

CMD [ "bash" ]