FROM archlinux:latest

# Update the system
RUN pacman -Syyu --noconfirm

# Install tools
RUN pacman -S vim git wget tmux zsh --noconfirm

# Create non-root user
RUN useradd -m -G wheel -s /bin/zsh workstation
USER workstation

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
