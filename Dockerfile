FROM archlinux:latest

# Update the system
RUN pacman -Syyu --noconfirm

# Set hostname
RUN echo "workstation" > /etc/hostname

# Install tools
RUN pacman -S vim git wget tmux zsh --noconfirm