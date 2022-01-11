FROM archlinux:latest

# Update the system
RUN pacman -Syyu --noconfirm

# Install tools
RUN pacman -S vim git wget tmux zsh htop openssh --noconfirm

# Create non-root user
RUN useradd -m -G wheel -s /bin/zsh workstation
USER workstation
WORKDIR /home/workstation

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Configure zsh
COPY zshrc /home/workstation/.zshrc

# Configure vim
RUN git clone --depth=1 https://github.com/amix/vimrc.git /home/workstation/.vim_runtime
RUN sh /home/workstation/.vim_runtime/install_awesome_vimrc.sh
COPY vimrc /home/workstation/.vim_runtime/my_configs.vim

# Configure tmux
RUN git clone https://github.com/gpakosz/.tmux.git
RUN ln -s -f .tmux/.tmux.conf
COPY tmux.conf /home/workstation/.tmux.conf.local

ENTRYPOINT [ "/bin/zsh" ]