#!/usr/bin/bash

# ------------------------------------------------------------------------------
# [INFO]
# If you are not registered as sudoers, you will be asked for your password.
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
#  Initialize
# ------------------------------------------------------------------------------
echo "🚀 A setup scripts for Ubuntu Desktop 22.04 LTS."

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
#  Gnome settings
# ------------------------------------------------------------------------------

# blank screen
gsettings set org.gnome.desktop.session idle-delay 0

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
  libgtop2-dev \
  gir1.2-gtop-2.0 \
  gir1.2-nm-1.0 \
  gir1.2-clutter-1.0 \
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
#  Install Crystal
# ------------------------------------------------------------------------------
brew install crystal

# ------------------------------------------------------------------------------
#  Install Swift
# ------------------------------------------------------------------------------
brew install swift

# ------------------------------------------------------------------------------
#  Install Nim
# ------------------------------------------------------------------------------
brew install nim

# ------------------------------------------------------------------------------
#  Install Zig
# ------------------------------------------------------------------------------
brew install zig

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
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Node インストール
volta install node

# Yarn インストール
volta install yarn

# ------------------------------------------------------------------------------
#  Install Bun
# ------------------------------------------------------------------------------
curl https://bun.sh/install | bash

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

# Bun
export PATH=\${HOME}/.bun/bin:\$PATH

# Rust
source "$HOME/.cargo/env"
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

# -----------------------------------------------------------------------------
# Install DeepL clip
# -----------------------------------------------------------------------------
curl -OL https://github.com/masan4444/deepl-clip/releases/latest/download/deepl-clip.sh
chmod u+x deepl-clip.sh
sudo mv deepl-clip.sh /usr/local/bin/

# -----------------------------------------------------------------------------
#  Install Gitkraken
# -----------------------------------------------------------------------------
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm -f ./gitkraken-amd64.deb

# -----------------------------------------------------------------------------
#  Install openssl 1.1.1g
# -----------------------------------------------------------------------------
wget https://www.openssl.org/source/openssl-1.1.1q.tar.gz
tar xvzf openssl-1.1.1q.tar.gz
cd openssl-1.1.1q
sh config zlib
make
sudo make install_sw
cd ../
rm -Rf openssl-1.1.1q*

# -----------------------------------------------------------------------------
#  Install Rust
# -----------------------------------------------------------------------------
curl https://sh.rustup.rs -sSf | sh -s -- -y

# -----------------------------------------------------------------------------
#  Install Wezterm
# -----------------------------------------------------------------------------
cd
wget https://github.com/wez/wezterm/releases/download/20221119-145034-49b9839f/wezterm-20221119-145034-49b9839f.Ubuntu22.04.deb
sudo apt-get install -y ./wezterm-20221119-145034-49b9839f.Ubuntu22.04.deb
rm -f ./wezterm-20221119-145034-49b9839f.Ubuntu22.04.deb

cat <<EOF >${HOME}/.wezterm.lua
local wezterm = require 'wezterm';

return {
  color_scheme = "iceberg-dark",
  font = wezterm.font("UDEV Gothic"),
  font_size = 22,
  line_height = 1.0,
  use_ime = true,
  initial_cols = 250,
  initial_rows = 100,
  hide_tab_bar_if_only_one_tab = true,
  keys = {
    {key="t", mods="CTRL", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="{", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=-1}},
    {key="}", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=1}},
    {key="w", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
    {key = "_", mods="CTRL", action="DisableDefaultAssignment" },
    {
      key = "=",
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.SplitVertical {
        domain = 'CurrentPaneDomain'
      },
    },
    {
      key = "|",
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.SplitHorizontal {
        domain = 'CurrentPaneDomain'
      },
    },
    {
      key = 'Z',
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.TogglePaneZoomState,
    },
    {
      key = '~',
      mods = 'CTRL|SHIFT|ALT',
      action = wezterm.action.TogglePaneZoomState,
    },
  },
  hyperlink_rules = {
    -- Linkify things that look like URLs
    -- This is actually the default if you don't specify any hyperlink_rules
    {
      regex = "\\\\b\\\\w+://(?:[\\\\w.-]+)\\\\.[a-z]{2,15}\\\\S*\\\\b",
      format = "/setup.sh",
    },

    -- linkify email addresses
    {
      regex = "\\\\b\\\\w+@[\\\\w-]+(\\\\.[\\\\w-]+)+\\\\b",
      format = "mailto:/setup.sh",
    },

    -- file:// URI
    {
      regex = "\\\\bfile://\\\\S*\\\\b",
      format = "/setup.sh",
    },

    -- Make task numbers clickable
    --[[
    {
      regex = "\\\\b[tT](\\\\d+)\\\\b"
      format = "https://example.com/tasks/?t="
    }
    ]]
  }
}
EOF

# -----------------------------------------------------------------------------
#  Install UDEV Gothic
# -----------------------------------------------------------------------------
wget https://github.com/yuru7/udev-gothic/releases/download/v1.0.1/UDEVGothic_v1.0.1.zip
/usr/bin/unzip UDEVGothic_v1.0.1.zip
sudo rm -Rf /usr/share/fonts/UDEVGothic_v1.0.1
sudo mv UDEVGothic_v1.0.1 /usr/share/fonts
rm UDEVGothic_v1.0.1.zip
# -----------------------------------------------------------------------------

# ------------------------------------------------------------------------------
#  Gnome settings
# ------------------------------------------------------------------------------

# accent color
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-blue-dark"

# auto maximize
gsettings set org.gnome.mutter auto-maximize false

# dock icon action
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# show trash
gsettings set org.gnome.shell.extensions.ding show-trash true

# default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec 'wezterm'
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

# dock extend height
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true

# dock app at top
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true

# show battery percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true

# show seconds at taskbar
gsettings set org.gnome.desktop.interface clock-show-seconds "true"

# show weekday at taskbar
gsettings set org.gnome.desktop.interface clock-show-weekday "true"

# set task font
gsettings set org.gnome.desktop.interface font-name 'Noto Sans CJK JP 11'

# hot corners
gsettings set org.gnome.desktop.interface enable-hot-corners true

# papirus-icon-theme
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt-get update
sudo apt-get install -y papirus-icon-theme
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

# keyboard settings
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swap_lalt_lctl', 'ctrl:nocaps']"
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps', 'ctrl:swap_lalt_lctl']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Primary>q']"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Primary><Shift>t']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Primary>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Primary><Shift>Tab']"

cat <<EOF >${HOME}/.xbindkeysrc
"echo -n | xsel -n -i; pkill xbindkeys; xdotool click 2; xbindkeys"
b:2 + Release
EOF

xbindkeys -p

# change directory name to english
LANG=C xdg-user-dirs-update --force &&
  rm -Rf テンプレート &&
  rm -Rf ダウンロード &&
  rm -Rf デスクトップ &&
  rm -Rf ドキュメント &&
  rm -Rf ビデオ &&
  rm -Rf ピクチャ &&
  rm -Rf ミュージック &&
  rm -Rf 公開

# ------------------------------------------------------------------------------
#  Install tweaks
# ------------------------------------------------------------------------------
sudo apt-get update
sudo add-apt-repository universe -y
sudo apt install gnome-tweak-tool -y
sudo apt install gnome-tweaks gnome-shell-extensions -y

# ------------------------------------------------------------------------------
#  Install Fluent wallpapers
# ------------------------------------------------------------------------------
cd ~/
git clone -b Wallpaper https://github.com/vinceliuice/Fluent-gtk-theme.git
cd Fluent-gtk-theme
./install-wallpapers.sh
cd ../
rm -Rf Fluent-gtk-theme

# ------------------------------------------------------------------------------
#  Install restricted-extras
# ------------------------------------------------------------------------------
# sudo apt-get install -y ubuntu-restricted-extras

# ------------------------------------------------------------------------------
#  Install ffmpeg
# ------------------------------------------------------------------------------
sudo apt-get install -y ffmpeg

# ------------------------------------------------------------------------------
#  Install Totem
# ------------------------------------------------------------------------------
sudo apt install -y totem

# ------------------------------------------------------------------------------
#  Install Slack
# ------------------------------------------------------------------------------
sudo apt-get install -y slack

# ------------------------------------------------------------------------------
#  Install Ulauncher
# ------------------------------------------------------------------------------
sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo apt update
sudo apt-get install -y ulauncher

# ------------------------------------------------------------------------------
#  Install Chrome
# ------------------------------------------------------------------------------
sudo apt-get install -y chromium-browser

# ------------------------------------------------------------------------------
#  Install KeePassX
# ------------------------------------------------------------------------------
sudo add-apt-repository -y ppa:phoerious/keepassxc
sudo apt update
sudo apt-get install -y keepassxc

# ------------------------------------------------------------------------------
#  Install Shotcut
# ------------------------------------------------------------------------------
sudo add-apt-repository -y ppa:haraldhv/shotcut
sudo apt-get update
sudo apt-get install -y shotcut

# ------------------------------------------------------------------------------
#  DeepL Clip
# ------------------------------------------------------------------------------
sudo apt install -y xclip nkf
curl -OL https://github.com/masan4444/deepl-clip/releases/latest/download/deepl-clip.sh
chmod u+x deepl-clip.sh

# TODO: DeepL Clip shortcut setting

# ------------------------------------------------------------------------------
#  Install Visual Studio Code
# ------------------------------------------------------------------------------
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings
sudo sh -c 'echo \"deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main\" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code
sudo apt-get autoremove -y

code --install-extension vmsynkov.colonize
code --install-extension aaron-bond.better-comments
code --install-extension actboy168.lua-debug
code --install-extension alefragnani.Bookmarks
code --install-extension antfu.browse-lite
code --install-extension antfu.vite
code --install-extension ashishmishra26.iceberg
code --install-extension astro-build.astro-vscode
code --install-extension austenc.tailwind-docs
code --install-extension Avetis.nord-palette
code --install-extension bibhasdn.unique-lines
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension bourhaouta.tailwindshades
code --install-extension bradlc.vscode-tailwindcss
code --install-extension bungcip.better-toml
code --install-extension Cameron.vscode-pytest
code --install-extension codezombiech.gitignore
code --install-extension coolbear.systemd-unit-file
code --install-extension crystal-lang-tools.crystal-lang
code --install-extension cschlosser.doxdocgen
code --install-extension danascript.ice-blue-dark-theme
code --install-extension Dart-Code.dart-code
code --install-extension dlech.chmod
code --install-extension dnlytras.nord-wave
code --install-extension doinkythederp.nasm-language-support
code --install-extension donjayamanne.python-environment-manager
code --install-extension dvirtz.parquet-viewer
code --install-extension eamodio.gitlens
code --install-extension ecmel.vscode-html-css
code --install-extension Equinusocio.vsc-community-material-theme
code --install-extension Equinusocio.vsc-material-theme
code --install-extension equinusocio.vsc-material-theme-icons
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension formulahendry.code-runner
code --install-extension foxundermoon.shell-format
code --install-extension frhtylcn.pythonsnippets
code --install-extension geddski.macros
code --install-extension GitLab.gitlab-workflow
code --install-extension golang.go
code --install-extension HaaLeo.timing
code --install-extension harg.iceberg
code --install-extension hbenl.vscode-test-explorer
code --install-extension henriiik.vscode-sort
code --install-extension hollowtree.vue-snippets
code --install-extension jairhenrique.pytest-snippets
code --install-extension JakeBecker.elixir-ls
code --install-extension jeff-hykin.better-cpp-syntax
code --install-extension KevinRose.vsc-python-indent
code --install-extension kosz78.nim
code --install-extension lanza.lldb-vscode
code --install-extension littlefoxteam.vscode-python-test-adapter
code --install-extension liuji-jim.vue
code --install-extension lkrms.inifmt
code --install-extension lorenzopirro.zig-snippets
code --install-extension LucianIrsigler.nasm
code --install-extension mads-hartmann.bash-ide-vscode
code --install-extension marlosirapuan.nord-deep
code --install-extension maziac.asm-code-lens
code --install-extension mcright.auto-save
code --install-extension mosapride.zenkaku
code --install-extension ms-azuretools.vscode-docker
code --install-extension MS-CEINTL.vscode-language-pack-ja
code --install-extension ms-dotnettools.csharp
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.cmake-tools
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension ms-vscode.cpptools-themes
code --install-extension ms-vscode.mono-debug
code --install-extension ms-vscode.test-adapter-converter
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension mtxr.sqltools
code --install-extension nickmillerdev.pytest-fixtures
code --install-extension njpwerner.autodocstring
code --install-extension Nord.nord
code --install-extension oderwat.indent-rainbow
code --install-extension oonsnnsk.vscode-autosave-ext
code --install-extension pamaron.pytest-runner
code --install-extension PKief.material-icon-theme
code --install-extension prime31.zig
code --install-extension redhat.java
code --install-extension redhat.vscode-yaml
code --install-extension rust-lang.rust-analyzer
code --install-extension SBSnippets.pytorch-snippets
code --install-extension shakram02.bash-beautify
code --install-extension shardulm94.trailing-spaces
code --install-extension sswg.swift-lang
code --install-extension sumneko.lua
code --install-extension trixnz.vscode-lua
code --install-extension twxs.cmake
code --install-extension vadimcn.vscode-lldb
code --install-extension vincaslt.highlight-matching-tag
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension voorjaar.windicss-intellisense
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension vscodevim.vim
code --install-extension wingrunr21.vscode-ruby
code --install-extension xdebug.php-debug
code --install-extension xdebug.php-pack
code --install-extension yzhang.markdown-all-in-one
code --install-extension Zarifprogrammer.tailwind-snippets
code --install-extension ZixuanChen.vitest-explorer
code --install-extension zobo.php-intellisense

mkdir -p ~/.config/Code/User
cat <<EOF >~/.config/Code/User/keybindings.json
// 既定値を上書きするには、このファイル内にキー バインドを挿入します
[
  // Git管理
  // サイドバーのgitボタンクリックの動作
  {
    "key": "shift+ctrl+g",
    "command": "workbench.view.scm"
  },
  //
  //
  // spaceでエディターにdiffを開きつつカーソルは残したまま
  // {
  // "key": "ctrl+shift+space",
  // "command": "list.selectAndPreserveFocus",
  // "when": "sideBarFocus && activeViewlet == 'workbench.view.scm'"
  // },
  //
  //
  // uでステージング
  // {
  // "key": "ctrl+shift+u",
  // "command": "git.stage",
  // "when": "sideBarFocus && activeViewlet == 'workbench.view.scm'"
  // },
  //
  //
  // shift + c でコミットメッセージの入力へ
  // {
  // "key": "shift+c",
  // "command": "git.commitStaged",
  // "when": "sideBarFocus && activeViewlet == 'workbench.view.scm'"
  // },
  //
  //
  // shfit + p でプッシュ
  // {
  // "key": "shift+p",
  // "command": "git.push",
  // "when": "sideBarFocus && activeViewlet == 'workbench.view.scm'"
  // },
  //
  //
  // shift+u でステージングを戻す
  // {
  //   "key": "shift+u",
  //   "command": "git.unstage",
  //   "when": "sideBarFocus && activeViewlet == 'workbench.view.scm'"
  // },
  //
  //
  // エクスプローラーへフォーカス
  {
    "key": "ctrl+w h",
    "command": "workbench.action.focusSideBar",
    "when": "editorFocus"
  },
  //
  //
  // エディタへフォーカス
  {
    "key": "escape",
    "command": "workbench.action.focusFirstEditorGroup",
    "when": "!editorFocus"
  },
  {
    "key": "ctrl+w l",
    "command": "workbench.action.focusFirstEditorGroup",
    "when": "!editorFocus"
  },
  //
  //
  // エクスプローラー表示/非表示切り替え
  {
    "key": "ctrl+1 ctrl+1",
    "command": "workbench.view.explorer",
    "when": "viewContainer.workbench.view.explorer.enabled"
  },
  {
    "key": "ctrl+1 ctrl+1",
    "command": "workbench.action.toggleSidebarVisibility",
    "when": "filesExplorerFocus"
  },
  //
  //
  // ドキュメントフォーマット
  {
    "key": "ctrl+alt+l",
    "command": "editor.action.formatDocument.none",
    "when": "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly"
  },
  {
    "key": "ctrl+shift+i",
    "command": "-editor.action.formatDocument.none",
    "when": "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly"
  },
  {
    "key": "ctrl+alt+l",
    "command": "editor.action.formatDocument",
    "when": "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor"
  },
  {
    "key": "ctrl+shift+i",
    "command": "-editor.action.formatDocument",
    "when": "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor"
  },
  {
    "key": "ctrl+w ctrl+w",
    "command": "workbench.action.closeActiveEditor"
  },
  {
    "key": "ctrl+w",
    "command": "-workbench.action.closeActiveEditor"
  },
  //
  //
  // エディタ移動
  {
    "key": "ctrl+shift+]",
    "command": "workbench.action.nextEditor"
  },
  {
    "key": "ctrl+pagedown",
    "command": "-workbench.action.nextEditor"
  },
  {
    "key": "ctrl+shift+[",
    "command": "workbench.action.previousEditor"
  },
  {
    "key": "ctrl+pageup",
    "command": "-workbench.action.previousEditor"
  },
  //
  //
  // デバッグなしで実行
  {
    "key": "shift+f10",
    "command": "workbench.action.debug.run",
    "when": "debuggersAvailable && debugState != 'initializing'"
  },
  {
    "key": "ctrl+f5",
    "command": "-workbench.action.debug.run",
    "when": "debuggersAvailable && debugState != 'initializing'"
  },
  //
  //
  // デバッグ実行
  {
    "key": "shift+f9",
    "command": "workbench.action.debug.start",
    "when": "debuggersAvailable && debugState == 'inactive'"
  },
  {
    "key": "f5",
    "command": "-workbench.action.debug.start",
    "when": "debuggersAvailable && debugState == 'inactive'"
  },
  //
  //
  // ターミナル表示/非表示
  {
    "key": "ctrl+f12",
    "command": "workbench.action.terminal.toggleTerminal",
    "when": "terminal.active"
  },
  //
  //
  // ブレークポイント設定/解除
  {
    "key": "ctrl+f7",
    "command": "editor.debug.action.toggleBreakpoint",
    "when": "debuggersAvailable && editorTextFocus"
  },
  {
    "key": "f8",
    "command": "-editor.debug.action.toggleBreakpoint",
    "when": "debuggersAvailable && editorTextFocus"
  },
  //
  //
  // ステップアウト
  {
    "key": "f8",
    "command": "workbench.action.debug.stepOut",
    "when": "debugState != 'inactive'"
  },
  {
    "key": "ctrl+f11",
    "command": "-workbench.action.debug.stepOut",
    "when": "debugState != 'inactive'"
  },
  //
  //
  // ステップイン
  {
    "key": "f7",
    "command": "workbench.action.debug.stepInto",
    "when": "debugState != 'inactive'"
  },
  {
    "key": "f11",
    "command": "-workbench.action.debug.stepInto",
    "when": "debugState != 'inactive'"
  },
  {
    "key": "tab",
    "command": "editor.action.indentLines",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+]",
    "command": "-editor.action.indentLines",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "shift+tab",
    "command": "editor.action.outdentLines",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+[",
    "command": "-editor.action.outdentLines",
    "when": "editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+/",
    "command": "macros.commentLineAndNext"
  },
  {
    "key": "ctrl+n",
    "command": "workbench.action.files.newUntitledFile"
  },
  {
    "key": "ctrl+n",
    "command": "-workbench.action.files.newUntitledFile"
  },
  {
    "key": "alt+n",
    "command": "explorer.newFile"
  },
  {
    "key": "ctrl+shift+n",
    "command": "explorer.newFolder"
  },
  {
    "key": "shift+alt+pageup",
    "command": "workbench.action.terminal.resizePaneUp"
  },
  {
    "key": "shift+alt+pagedown",
    "command": "workbench.action.terminal.resizePaneDown"
  },
  {
    "key": "ctrl+shift+alt+/",
    "command": "editor.action.quickFix",
    "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+.",
    "command": "-editor.action.quickFix",
    "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly"
  },
  {
    "key": "ctrl+shift+j",
    "command": "-rust-analyzer.joinLines",
    "when": "editorTextFocus && editorLangId == 'rust'"
  },
  {
    "key": "ctrl+shift+j",
    "command": "-workbench.action.search.toggleQueryDetails",
    "when": "inSearchEditor || searchViewletFocus"
  },
  {
    "key": "ctrl+shift+c",
    "command": "-workbench.action.terminal.openNativeConsole",
    "when": "!terminalFocus"
  },
  {
    "key": "ctrl+shift+alt+[BracketLeft]",
    "command": "workbench.action.toggleMaximizedPanel"
  },
  {
    "key": "shift+f5",
    "command": "-workbench.action.debug.stop",
    "when": "inDebugMode && !focusedSessionIsAttach"
  },
  {
    "key": "ctrl+f2",
    "command": "workbench.action.debug.disconnect",
    "when": "focusedSessionIsAttach && inDebugMode"
  },
  {
    "key": "shift+f5",
    "command": "-workbench.action.debug.disconnect",
    "when": "focusedSessionIsAttach && inDebugMode"
  },
  {
    "key": "ctrl+f2",
    "command": "workbench.action.debug.stop"
  },
  {
    "key": "shift+f11",
    "command": "bookmarks.toggle",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+alt+k",
    "command": "-bookmarks.toggle",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+shift+f11",
    "command": "bookmarks.jumpToNext",
    "when": "editorTextFocus"
  },
  {
    "key": "ctrl+alt+l",
    "command": "-bookmarks.jumpToNext",
    "when": "editorTextFocus"
  },
  {
    "key": "shift+alt+[Minus]",
    "command": "macros.fakeUnderscore"
  },
  {
    "key": "ctrl+shift+alt+p",
    "command": "clipring.pasteRingItem",
    "when": "editorFocus"
  },
  {
    "key": "ctrl+shift+v",
    "command": "-clipring.pasteRingItem",
    "when": "editorFocus"
  }
]
//
EOF

cat <<EOF >~/.config/Code/User/settings.json
{
  // 単体テストツールとしてpytestを有効化
  "python.testing.pytestEnabled": true,
  // ファイル保存時にテスト対象コードを自動的に探索
  "python.testing.autoTestDiscoverOnSaveEnabled": true,
  // 単体テストツールとしてpytestを有効化
  "python.testing.pytestEnabled": true,
  // ファイル保存時にテスト対象を自動的に探索
  "python.testing.autoTestDiscoverOnSaveEnabled": true,
  // pytest実行時の引数設定を追加
  // --cov: カバレッジ計測の有効化
  // --cov-report xml: カバレッジ計測レポートをxml形式(coverage.xml)で出力
  "python.testing.pytestArgs": [
    "--cov=src",
    "--cov-report",
    "xml"
  ],
  // エディタ上のカバレッジ表示設定
  // ガター(ブレークポイント等が表示される場所)でのカバレッジ表示有無(default: true)
  "coverage-gutters.showGutterCoverage": true,
  // エディタ行でのカバレッジ表示有無(default: false)
  "coverage-gutters.showLineCoverage": true,
  // ルーラーでのカバレッジ表示有無(default: false)
  "coverage-gutters.showRulerCoverage": true,
  "macros": {
    "fakeUnderscore": [
      {
        "command": "type",
        "args": {
          "text": "_"
        }
      }
    ],
    "commentLineAndNext": [
      "editor.action.commentLine",
      "cursorDown",
    ],
  },
  "vim.easymotion": true,
  // 'j' -> 'k' == ESC
  "vim.insertModeKeyBindings": [
    {
      "before": [
        "j",
        "k"
      ],
      "after": [
        "<Esc>"
      ]
    }
  ],
  "vim.normalModeKeyBindings": [
    {
      "before": [
        "u"
      ],
      "commands": [
        "undo"
      ]
    },
    {
      "before": [
        "<C-r>"
      ],
      "commands": [
        "redo"
      ]
    }
  ],
  "vim.handleKeys": {
    "<C-a>": false,
    "<C-f>": false,
    "<C-n>": false,
    "<C-c>": false,
    "<C-x>": false,
    "<C-v>": false,
    "<C-b>": false,
    "<C-j>": false,
    "<C-k>": false
  },
  "git.enableSmartCommit": true,
  "git.confirmSync": false,
  "git.autofetch": true,
  "explorer.confirmDelete": false,
  "[jsonc]": {
    "editor.defaultFormatter": "vscode.json-language-features"
  },
  "redhat.telemetry.enabled": true,
  "workbench.iconTheme": "material-icon-theme",
  "terminal.external.osxExec": "wezterm",
  "terminal.external.linuxExec": "wezterm",
  "terminal.integrated.profiles.linux": {
    // "bash": {
    // "path": "bash",
    // "icon": "terminal-bash"
    // },
    "zsh": {
      "path": "zsh",
      "icon": "terminal-bash"
    },
    "fish": {
      "path": "fish"
    },
    "tmux": {
      "path": "tmux",
      "icon": "terminal-tmux"
    },
    "pwsh": {
      "path": "pwsh",
      "icon": "terminal-powershell"
    }
  },
  "terminal.integrated.defaultProfile.linux": "zsh",
  "[shellscript]": {
    "editor.defaultFormatter": "foxundermoon.shell-format"
  },
  "[dockerfile]": {
    "editor.defaultFormatter": "foxundermoon.shell-format"
  },
  "python.condaPath": "/home/sware/micromamba/condabin/conda",
  "vs-kubernetes": {
    "vscode-kubernetes.helm-path.linux": "/home/sware/.local/state/vs-kubernetes/tools/helm/linux-amd64/helm",
    "vscode-kubernetes.kubectl-path.linux": "/home/sware/.local/state/vs-kubernetes/tools/kubectl/kubectl",
    "vscode-kubernetes.minikube-path.linux": "/home/sware/.local/state/vs-kubernetes/tools/minikube/linux-amd64/minikube"
  },
  "git.ignoreRebaseWarning": true,
  "editor.minimap.enabled": false,
  "editor.accessibilitySupport": "off",
  "editor.mouseWheelZoom": true,
  "explorer.confirmDragAndDrop": false,
  "remote.SSH.remotePlatform": {
    "dev.vlue.io": "linux"
  },
  "indentRainbow.errorColor": "rgba(128,32,32,0.1)",
  "indentRainbow.tabmixColor": "rgba(128,32,96,0.1)",
  "[markdown]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[vue]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[dockercompose]": {
    "editor.defaultFormatter": "ms-azuretools.vscode-docker"
  },
  "files.exclude": {
    "**/__pycache__": true,
    "**/*.pyc": true
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "files.autoSave": "afterDelay",
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[html]": {
    "editor.defaultFormatter": "vscode.html-language-features"
  },
  "files.associations": {
    "*.ts": "typescript"
  },
  "explorer.compactFolders": false,
  "security.workspace.trust.untrustedFiles": "open",
  "[css]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "window.zoomLevel": 5,
  "workbench.colorTheme": "Nord Deep",
  "[php]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "vsicons.dontShowNewVersionMessage": true,
  "gitlens.codeLens.enabled": false,
  "gitlens.hovers.enabled": false,
  "explorer.autoReveal": false,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "todo-tree.highlights.customHighlight": {
    "BUG": {
      "icon": "bug"
    },
    "HACK": {
      "icon": "tools"
    },
    "FIXME": {
      "icon": "flame"
    },
    "XXX": {
      "icon": "$(close)"
    }
  },
  "todo-tree.highlights.useColourScheme": true,
  "todo-tree.general.tags": [
    "BUG",
    "HACK",
    "FIXME",
    "TODO",
    "XXX",
    "[ ]",
    "[x]",
    "TEMP",
    "INFO",
    "MEMO"
  ],
  "php.validate.enable": false,
  "php.suggest.basic": false,
  "php.validate.executablePath": "/home/linuxbrew/.linuxbrew/bin/php",
  "editor.fontFamily": "'UDEV Gothic', 'Droid Sans Mono', 'monospace', monospace",
  "vim.useSystemClipboard": true,
  "workbench.editor.enablePreview": false,
  "vite.autoStart": false,
  //
}
EOF

# ------------------------------------------------------------------------------
#  Reboot
# ------------------------------------------------------------------------------
sudo reboot

# ------------------------------------------------------------------------------
# EOF
