#!/usr/bin/bash

# ------------------------------------------------------------------------------
# [INFO]
# If you are not registered as sudoers, you will be asked for your password.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
#  Initialize
# ------------------------------------------------------------------------------
echo "🚀 A setup scripts for Ubuntu Server LTS 22.04."

# ------------------------------------------------------------------------------
#  Set Vim to default editor
# ------------------------------------------------------------------------------
sudo apt install vim -y
sudo update-alternatives --set editor /usr/bin/vim.basic

# ------------------------------------------------------------------------------
#  Set /etc/passwd for Account
# ------------------------------------------------------------------------------
sudo usermod -s /usr/bin/zsh ${USER}

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
#  Setup Linuxbrew
# ------------------------------------------------------------------------------
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ------------------------------------------------------------------------------
#  Install gcc
# ------------------------------------------------------------------------------
brew install gcc

# ------------------------------------------------------------------------------
#  Install NeoVim
# ------------------------------------------------------------------------------
brew install nvim

# ------------------------------------------------------------------------------
#  Install Sheldon
# ------------------------------------------------------------------------------
brew install sheldon

# ------------------------------------------------------------------------------
#  Install fzf
# ------------------------------------------------------------------------------
brew install fzf

# ------------------------------------------------------------------------------
#  Install zsh-completions
# ------------------------------------------------------------------------------
brew install zsh-completions

# ------------------------------------------------------------------------------
#  Install Volta
# ------------------------------------------------------------------------------
curl https://get.volta.sh | bash
export VOLTA_HOME="\$HOME/.volta"
export PATH="\$VOLTA_HOME/bin:\$PATH"

# Node インストール
volta install node

# Yarn インストール
volta install yarn

# ------------------------------------------------------------------------------
#  Setup ZSH
# ------------------------------------------------------------------------------
echo "Setup ZSH"
touch ~/.zshrc
sudo chsh -s $(which zsh) $(whoami)

echo "Install Oh my zsh"
rm -rf ${HOME}/.oh-my-zsh
curl -Lk https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Change theme to "avit"
sed -i -e "s/robbyrussell/avit/g" ~/.zshrc

# Make ~/.local/bin directory
mkdir -p ${HOME}/.local/bin

# Add settings
cat <<EOS >>~/.zshrc
# 文字コードの指定
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -Uz colors
colors

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cdなしでディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep

# ビープ音の停止(補完時)
setopt nolistbeep

# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 履歴検索中、(連続してなくとも)重複を飛ばす
setopt hist_find_no_dups

# histroyコマンドは記録しない
setopt hist_no_store

function select-history() {
    BUFFER=\$(history -n -r 1 | fzf --no-sort +m --query "\$LBUFFER" --prompt="History > ")
    CURSOR=\$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

# aliases
alias vim="nvim"
alias vi="nvim"

# zmv
autoload -Uz zmv
alias zmv='noglob zmv -W'

# Linuxbrew
export PATH=/home/linuxbrew/.linuxbrew/bin:\$PATH
eval "\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# .local/bin
export PATH=\${HOME}/.local/bin:\$PATH

# Volta
export VOLTA_HOME="\$HOME/.volta"
export PATH="\$VOLTA_HOME/bin:\$PATH"

EOS

# Setup for sheldon
mkdir -p ~/.config/sheldon
cat <<EOF >~/.config/sheldon/plugins.toml
shell = "zsh"

[plugins]

EOF

sheldon add zsh-autosuggestions --github zsh-users/zsh-autosuggestions
sheldon add zsh-z --github agkozak/zsh-z
sheldon add zsh-bd --github Tarrasch/zsh-bd
sheldon add zsh-cdr --github willghatch/zsh-cdr
sheldon lock --update

# ------------------------------------------------------------------------------
#  Reboot
# ------------------------------------------------------------------------------
sudo reboot

# ------------------------------------------------------------------------------
# EOF
