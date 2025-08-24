FROM devkitpro/devkitarm:latest

## 1. Install xpra for x forwarding GUI apps like libresprite
# Get xpra key
RUN wget -O /usr/share/keyrings/xpra.asc https://xpra.org/xpra.asc
# Get xpra-lts.sources for bookworm
RUN wget -O /etc/apt/sources.list.d/xpra-lts.sources \
    https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bookworm/xpra-lts.sources
# Update and install xpra
RUN apt-get update && apt-get install -y xpra

# Make /tools and download LibreSprite AppImage
RUN mkdir -p /tools && \
    wget -O /tools/LibreSprite-anylinux-x86_64.AppImage \
    https://github.com/LibreSprite/LibreSprite/releases/download/v1.2/LibreSprite-anylinux-x86_64.AppImage
