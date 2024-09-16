FROM archlinux:latest

# Install necessary packages
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm base-devel

# Copy the build script into the container
COPY build.sh /build.sh

# Make the build script executable
RUN chmod +x /build.sh

# Run the build script
RUN ./build.sh