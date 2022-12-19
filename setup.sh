#!/usr/bin/bash

# ------------------------------------------------------------------------------
# [INFO]
# If you are not registered as sudoers, you will be asked for your password.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
#  Initialize
# ------------------------------------------------------------------------------
echo "🚀 A setup scripts for Ubuntu."

# ------------------------------------------------------------------------------
#  Set Vim to default editor
# ------------------------------------------------------------------------------
sudo update-alternatives --set editor /usr/bin/vim.basic

# ------------------------------------------------------------------------------
#  Add current user to sudoers
# ------------------------------------------------------------------------------
echo "${USER} ALL=(ALL:ALL) NOPASSWD:   ALL" | sudo tee /etc/sudoers.d/${USER}

# ------------------------------------------------------------------------------
#  Install Packages
# ------------------------------------------------------------------------------
sudo apt-get install -y binutils \
    bowtie2 \
    bridge-utils \
    build-essential \
    curl \
    debhelper \
    desktop-file-utils \
    devscripts \
    fcitx-libs-dev \
    gdebi-core \
    gettext \
    gir1.2-clutter-1.0 \
    gir1.2-gtop-2.0 \
    gir1.2-nm-1.0 \
    git \
    git-flow \
    git-lfs \
    gnupg2 \
    gyp \
    jq \
    libbz2-dev \
    libc6-dev \
    libcurl4-openssl-dev \
    libcurl4 \
    libedit2 \
    libexpat-dev \
    libffi-dev \
    libgcc-9-dev \
    libgtk-4-bin \
    libgtk-4-common \
    libgtk-4-dev \
    libgtk-4-doc \
    libgtk2.0-dev \
    libgtop2-dev \
    libgwengui-qt5-dev \
    libibus-1.0-dev \
    liblzo2-dev \
    libncurses-dev \
    libpam0g-dev \
    libprotobuf-dev \
    libpython2.7 \
    libqwt-qt5-dev \
    libsqlite3-0 \
    libsqlite3-dev \
    libssl-dev \
    libstdc++-9-dev \
    libuim-dev \
    libvirt-clients \
    libvirt-daemon \
    libxcb-xfixes0-dev \
    libxml2 \
    libz3-dev \
    libzinnia-dev \
    m4 \
    nkf \
    openssh-server \
    protobuf-compiler \
    python3-dev \
    python3-pip \
    python3-venv \
    qemu-system-x86 \
    qtbase5-dev \
    ruby \
    sqlite3 \
    stress \
    texinfo \
    tree \
    tzdata \
    zsh \
    apt-transport-https \
    ca-certificates \
    software-properties-common \
    ucommon-utils

# ------------------------------------------------------------------------------
#  Install docker
# ------------------------------------------------------------------------------

# ファイル存在確認
if [ -f /etc/apt/sources.list.d/docker.list ]; then
    echo "SKIP: Already installed docker."
else
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
    sudo apt update
    sudo apt-get install -y docker-ce
    sudo usermod -aG docker ${USER}
    sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    docker-compose --version
fi

# ------------------------------------------------------------------------------
#  Update the system to the latest version
# ------------------------------------------------------------------------------
sudo apt update && sudo apt -y upgrade
sudo apt -y autoremove

# ------------------------------------------------------------------------------
#  Setup ZSH
# ------------------------------------------------------------------------------
echo "Setup ZSH"
usermod -s /usr/bin/zsh
touch ~/.zshrc
sudo chsh -s $(which zsh) $(whoami)
exec $SHELL -l

echo "Install Oh my zsh"
rm -rf ${HOME}/.oh-my-zsh
curl -Lk https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
exec $SHELL -l

# TODO: setup .zshrc and Sheldon

# ------------------------------------------------------------------------------
#  Reboot
# ------------------------------------------------------------------------------
sudo reboot

# ------------------------------------------------------------------------------
# EOF
