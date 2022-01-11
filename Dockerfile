FROM archlinux:latest

# Update the system
RUN pacman -Syyu --noconfirm

# Install tools
RUN pacman -S vim git wget tmux zsh --noconfirm

# Create non-root user
RUN useradd -m -G wheel -s /bin/zsh workstation
USER workstation