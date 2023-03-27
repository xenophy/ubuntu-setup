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
  wmctrl \
  xbindkeys \
  procps \
  file \
  xsel \
  xdotool \
  zlib1g-dev \
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

sudo apt-get install -y \
  accountsservice \
  acl \
  acpi-support \
  acpid \
  adduser \
  adwaita-icon-theme \
  aisleriot \
  alsa-base \
  alsa-topology-conf \
  alsa-ucm-conf \
  alsa-utils \
  amd64-microcode \
  anacron \
  apache2-bin \
  apache2-data \
  apache2-utils \
  apache2 \
  apg \
  apparmor \
  apport-gtk \
  apport-symptoms \
  apport \
  appstream \
  apt-config-icons-hidpi \
  apt-config-icons \
  apt-transport-https \
  apt-utils \
  apt \
  aptdaemon-data \
  aptdaemon \
  apturl-common \
  apturl \
  aspell-en \
  aspell \
  at-spi2-core \
  autoconf \
  automake \
  autotools-dev \
  avahi-autoipd \
  avahi-daemon \
  avahi-utils \
  baobab \
  base-files \
  base-passwd \
  bash-completion \
  bash \
  bc \
  bind9-dnsutils \
  bind9-host \
  bind9-libs \
  binfmt-support \
  binutils-common \
  binutils-x86-64-linux-gnu \
  binutils \
  bison \
  blt \
  bluez-cups \
  bluez-obexd \
  bluez \
  bolt \
  branding-ubuntu \
  brltty \
  bsdextrautils \
  bsdutils \
  bubblewrap \
  build-essential \
  busybox-initramfs \
  busybox-static \
  bzip2 \
  ca-certificates-java \
  ca-certificates-mono \
  ca-certificates \
  cabextract \
  checkinstall \
  cheese-common \
  cheese \
  chrome-gnome-shell \
  chromium-browser \
  chromium-codecs-ffmpeg-extra \
  clang-14 \
  clang-format-14 \
  clang-format \
  clang \
  cli-common \
  code \
  colord-data \
  colord \
  command-not-found \
  console-setup-linux \
  console-setup \
  containerd.io \
  coreutils \
  cpio \
  cpp-11 \
  cpp-12 \
  cpp \
  cpu-checker \
  cracklib-runtime \
  cron \
  cups-browsed \
  cups-bsd \
  cups-client \
  cups-common \
  cups-core-drivers \
  cups-daemon \
  cups-filters-core-drivers \
  cups-filters \
  cups-ipp-utils \
  cups-pk-helper \
  cups-ppdc \
  cups-server-common \
  cups \
  curl \
  dash \
  dbus-user-session \
  dbus \
  dc \
  dconf-cli \
  dconf-gsettings-backend \
  dconf-service \
  dctrl-tools \
  debconf-i18n \
  debconf \
  debianutils \
  deja-dup \
  desktop-file-utils \
  dictionaries-common \
  diffutils \
  dirmngr \
  discord \
  distro-info-data \
  distro-info \
  dkms \
  dmeventd \
  dmidecode \
  dmsetup \
  dmz-cursor-theme \
  dns-root-data \
  dnsmasq-base \
  doc-base \
  docbook-xml \
  docker-ce-cli \
  docker-ce-rootless-extras \
  docker-ce \
  docker-compose-plugin \
  docker-scan-plugin \
  dosfstools \
  doxygen \
  dpkg-dev \
  dpkg \
  duplicity \
  e2fsprogs \
  ed \
  efibootmgr \
  eject \
  emacsen-common \
  enchant-2 \
  eog \
  espeak-ng-data \
  evince-common \
  evince \
  evolution-data-server-common \
  evolution-data-server \
  executequery \
  fakeroot \
  fdisk \
  file-roller \
  file \
  findutils \
  firmware-sof-signed \
  flatpak \
  flex-doc \
  flex \
  fontconfig-config \
  fontconfig \
  fonts-beng-extra \
  fonts-beng \
  fonts-dejavu-core \
  fonts-dejavu-extra \
  fonts-deva-extra \
  fonts-deva \
  fonts-droid-fallback \
  fonts-freefont-ttf \
  fonts-gargi \
  fonts-gubbi \
  fonts-gujr-extra \
  fonts-gujr \
  fonts-guru-extra \
  fonts-guru \
  fonts-indic \
  fonts-kacst-one \
  fonts-kacst \
  fonts-kalapi \
  fonts-khmeros-core \
  fonts-knda \
  fonts-lao \
  fonts-lato \
  fonts-liberation2 \
  fonts-liberation \
  fonts-lklug-sinhala \
  fonts-lohit-beng-assamese \
  fonts-lohit-beng-bengali \
  fonts-lohit-deva \
  fonts-lohit-gujr \
  fonts-lohit-guru \
  fonts-lohit-knda \
  fonts-lohit-mlym \
  fonts-lohit-orya \
  fonts-lohit-taml-classical \
  fonts-lohit-taml \
  fonts-lohit-telu \
  fonts-mlym \
  fonts-nakula \
  fonts-navilu \
  fonts-noto-cjk-extra \
  fonts-noto-cjk \
  fonts-noto-color-emoji \
  fonts-noto-mono \
  fonts-opensymbol \
  fonts-orya-extra \
  fonts-orya \
  fonts-pagul \
  fonts-sahadeva \
  fonts-samyak-deva \
  fonts-samyak-gujr \
  fonts-samyak-mlym \
  fonts-samyak-taml \
  fonts-sarai \
  fonts-sil-abyssinica \
  fonts-sil-padauk \
  fonts-smc-anjalioldlipi \
  fonts-smc-chilanka \
  fonts-smc-dyuthi \
  fonts-smc-gayathri \
  fonts-smc-karumbi \
  fonts-smc-keraleeyam \
  fonts-smc-manjari \
  fonts-smc-meera \
  fonts-smc-rachana \
  fonts-smc-raghumalayalamsans \
  fonts-smc-suruma \
  fonts-smc-uroob \
  fonts-smc \
  fonts-taml \
  fonts-telu-extra \
  fonts-telu \
  fonts-teluguvijayam \
  fonts-thai-tlwg \
  fonts-tibetan-machine \
  fonts-tlwg-garuda-ttf \
  fonts-tlwg-garuda \
  fonts-tlwg-kinnari-ttf \
  fonts-tlwg-kinnari \
  fonts-tlwg-laksaman-ttf \
  fonts-tlwg-laksaman \
  fonts-tlwg-loma-ttf \
  fonts-tlwg-loma \
  fonts-tlwg-mono-ttf \
  fonts-tlwg-mono \
  fonts-tlwg-norasi-ttf \
  fonts-tlwg-norasi \
  fonts-tlwg-purisa-ttf \
  fonts-tlwg-purisa \
  fonts-tlwg-sawasdee-ttf \
  fonts-tlwg-sawasdee \
  fonts-tlwg-typewriter-ttf \
  fonts-tlwg-typewriter \
  fonts-tlwg-typist-ttf \
  fonts-tlwg-typist \
  fonts-tlwg-typo-ttf \
  fonts-tlwg-typo \
  fonts-tlwg-umpush-ttf \
  fonts-tlwg-umpush \
  fonts-tlwg-waree-ttf \
  fonts-tlwg-waree \
  fonts-ubuntu \
  fonts-urw-base35 \
  fonts-yrsa-rasa \
  foomatic-db-compressed-ppds \
  fortune-mod \
  fortunes-min \
  fprintd \
  friendly-recovery \
  ftp \
  fuse3 \
  fuseiso \
  fwupd-signed \
  fwupd \
  g++-11 \
  g++ \
  gamemode-daemon \
  gamemode \
  gcc-11-base \
  gcc-11 \
  gcc-12-base \
  gcc-12-base \
  gcc-12 \
  gcc \
  gconf-service-backend \
  gconf-service \
  gconf2-common \
  gcr \
  gdb \
  gdisk \
  gdm3 \
  gedit-common \
  gedit \
  genisoimage \
  geoclue-2.0 \
  gettext-base \
  gettext \
  gh \
  ghostscript-x \
  ghostscript \
  gir1.2-accountsservice-1.0 \
  gir1.2-adw-1 \
  gir1.2-atk-1.0 \
  gir1.2-atspi-2.0 \
  gir1.2-ayatanaappindicator3-0.1 \
  gir1.2-ayatanaido3-0.4 \
  gir1.2-dbusmenu-glib-0.4 \
  gir1.2-dee-1.0 \
  gir1.2-freedesktop \
  gir1.2-gck-1 \
  gir1.2-gcr-3 \
  gir1.2-gda-5.0 \
  gir1.2-gdesktopenums-3.0 \
  gir1.2-gdkpixbuf-2.0 \
  gir1.2-gdm-1.0 \
  gir1.2-geoclue-2.0 \
  gir1.2-gexiv2-0.10 \
  gir1.2-glib-2.0 \
  gir1.2-gmenu-3.0 \
  gir1.2-gnomebluetooth-3.0 \
  gir1.2-gnomedesktop-3.0 \
  gir1.2-goa-1.0 \
  gir1.2-goocanvas-2.0 \
  gir1.2-graphene-1.0 \
  gir1.2-gsound-1.0 \
  gir1.2-gst-plugins-base-1.0 \
  gir1.2-gstreamer-1.0 \
  gir1.2-gtk-3.0 \
  gir1.2-gtk-4.0 \
  gir1.2-gtk-vnc-2.0 \
  gir1.2-gtksource-4 \
  gir1.2-gtop-2.0 \
  gir1.2-gudev-1.0 \
  gir1.2-gweather-3.0 \
  gir1.2-handy-1 \
  gir1.2-harfbuzz-0.0 \
  gir1.2-ibus-1.0 \
  gir1.2-javascriptcoregtk-4.0 \
  gir1.2-json-1.0 \
  gir1.2-keybinder-3.0 \
  gir1.2-libosinfo-1.0 \
  gir1.2-libvirt-glib-1.0 \
  gir1.2-mutter-10 \
  gir1.2-nm-1.0 \
  gir1.2-nma-1.0 \
  gir1.2-notify-0.7 \
  gir1.2-packagekitglib-1.0 \
  gir1.2-pango-1.0 \
  gir1.2-peas-1.0 \
  gir1.2-polkit-1.0 \
  gir1.2-rb-3.0 \
  gir1.2-rsvg-2.0 \
  gir1.2-secret-1 \
  gir1.2-snapd-1 \
  gir1.2-soup-2.4 \
  gir1.2-spiceclientglib-2.0 \
  gir1.2-spiceclientgtk-3.0 \
  gir1.2-totem-1.0 \
  gir1.2-totemplparser-1.0 \
  gir1.2-udisks-2.0 \
  gir1.2-unity-7.0 \
  gir1.2-upowerglib-1.0 \
  gir1.2-vte-2.91 \
  gir1.2-webkit2-4.0 \
  gir1.2-wnck-3.0 \
  git-man \
  git \
  github-desktop \
  gitkraken \
  gjs \
  gkbd-capplet \
  glib-networking-common \
  glib-networking-services \
  glib-networking \
  gnome-accessibility-themes \
  gnome-bluetooth-3-common \
  gnome-bluetooth-common \
  gnome-bluetooth \
  gnome-calculator \
  gnome-calendar \
  gnome-characters \
  gnome-control-center-data \
  gnome-control-center-faces \
  gnome-control-center \
  gnome-desktop-testing \
  gnome-desktop3-data \
  gnome-disk-utility \
  gnome-font-viewer \
  gnome-icon-theme \
  gnome-initial-setup \
  gnome-keyring-pkcs11 \
  gnome-keyring \
  gnome-logs \
  gnome-mahjongg \
  gnome-menus \
  gnome-mines \
  gnome-online-accounts \
  gnome-power-manager \
  gnome-remote-desktop \
  gnome-session-bin \
  gnome-session-canberra \
  gnome-session-common \
  gnome-settings-daemon-common \
  gnome-settings-daemon \
  gnome-shell-common \
  gnome-shell-extension-appindicator \
  gnome-shell-extension-desktop-icons-ng \
  gnome-shell-extension-manager \
  gnome-shell-extension-ubuntu-dock \
  gnome-shell \
  gnome-software-common \
  gnome-software-plugin-flatpak \
  gnome-software-plugin-snap \
  gnome-software \
  gnome-startup-applications \
  gnome-sudoku \
  gnome-system-monitor \
  gnome-terminal-data \
  gnome-terminal \
  gnome-themes-extra-data \
  gnome-themes-extra \
  gnome-todo-common \
  gnome-todo \
  gnome-tweaks \
  gnome-user-docs-ja \
  gnome-user-docs \
  gnome-video-effects \
  gnupg-agent \
  gnupg-l10n \
  gnupg-utils \
  gnupg \
  gobject-introspection \
  golang-1.18-doc \
  golang-1.18-go \
  golang-1.18-src \
  golang-1.18 \
  golang-doc \
  golang-go \
  golang-src \
  golang \
  google-chrome-stable \
  gpg-agent \
  gpg-wks-client \
  gpg-wks-server \
  gpg \
  gpgconf \
  gpgsm \
  gpgv \
  graphviz \
  grep \
  grilo-plugins-0.3-base \
  groff-base \
  grub-common \
  grub-efi-amd64-bin \
  grub-efi-amd64-signed \
  grub-gfxpayload-lists \
  grub-pc-bin \
  grub-pc \
  grub2-common \
  gsettings-desktop-schemas \
  gsettings-ubuntu-schemas \
  gsfonts \
  gstreamer1.0-alsa \
  gstreamer1.0-clutter-3.0 \
  gstreamer1.0-gl \
  gstreamer1.0-gtk3 \
  gstreamer1.0-libav \
  gstreamer1.0-packagekit \
  gstreamer1.0-pipewire \
  gstreamer1.0-plugins-base-apps \
  gstreamer1.0-plugins-base \
  gstreamer1.0-plugins-base \
  gstreamer1.0-plugins-good \
  gstreamer1.0-plugins-ugly \
  gstreamer1.0-pulseaudio \
  gstreamer1.0-tools \
  gstreamer1.0-vaapi \
  gstreamer1.0-x \
  gtk-update-icon-cache \
  gtk2-engines-murrine \
  gtk2-engines-murrine \
  gtk2-engines-pixbuf \
  gtkmm-documentation \
  guile-2.2-libs \
  gvfs-backends \
  gvfs-common \
  gvfs-daemons \
  gvfs-fuse \
  gvfs-libs \
  gvfs \
  gzip \
  hardinfo \
  hdparm \
  hicolor-icon-theme \
  hostname \
  hplip-data \
  hplip \
  htop \
  humanity-icon-theme \
  hunspell-en-us \
  hyphen-en-us \
  i965-va-driver \
  ibus-data \
  ibus-gtk3 \
  ibus-gtk4 \
  ibus-gtk \
  ibus-mozc \
  ibus \
  ibverbs-providers \
  icu-devtools \
  iio-sensor-proxy \
  im-config \
  imagemagick-6-common \
  imagemagick-6.q16 \
  imagemagick \
  info \
  init-system-helpers \
  init \
  initramfs-tools-bin \
  initramfs-tools-core \
  initramfs-tools \
  inputattach \
  install-info \
  intel-media-va-driver \
  intel-microcode \
  intltool \
  ipp-usb \
  iproute2 \
  iptables \
  iputils-ping \
  iputils-tracepath \
  ipxe-qemu-256k-compat-efi-roms \
  ipxe-qemu \
  irqbalance \
  isc-dhcp-client \
  isc-dhcp-common \
  iso-codes \
  iucode-tool \
  java-common \
  javascript-common \
  jq \
  kbd \
  kerneloops \
  keyboard-configuration \
  klibc-utils \
  kmod \
  krb5-locales \
  language-pack-en-base \
  language-pack-en \
  language-pack-gnome-en-base \
  language-pack-gnome-en \
  language-pack-gnome-ja-base \
  language-pack-gnome-ja \
  language-pack-ja-base \
  language-pack-ja \
  language-selector-common \
  language-selector-gnome \
  laptop-detect \
  less \
  lib32gcc-s1 \
  lib32stdc++6 \
  liba52-0.7.4 \
  libaa1 \
  libaacs0 \
  libabsl20210324 \
  libabw-0.1-1 \
  libaccountsservice0 \
  libacl1 \
  libadwaita-1-0 \
  libaio1 \
  libalgorithm-diff-perl \
  libalgorithm-diff-xs-perl \
  libalgorithm-merge-perl \
  libann0 \
  libao-common \
  libao4 \
  libaom3 \
  libapache2-mod-php8.1 \
  libapache2-mod-php \
  libapparmor1 \
  libapparmor1 \
  libappindicator1 \
  libappstream4 \
  libapr1 \
  libaprutil1-dbd-sqlite3 \
  libaprutil1-ldap \
  libaprutil1 \
  libapt-pkg6.0 \
  libarchive-zip-perl \
  libarchive13 \
  libargon2-1 \
  libaribb24-0 \
  libasan6 \
  libasan8 \
  libasound2-data \
  libasound2-dev \
  libasound2-plugins \
  libasound2-plugins \
  libasound2 \
  libasound2 \
  libaspell15 \
  libass9 \
  libassuan0 \
  libasyncns0 \
  libasyncns0 \
  libatasmart4 \
  libatk-adaptor \
  libatk-adaptor \
  libatk-bridge2.0-0 \
  libatk-bridge2.0-0 \
  libatk-bridge2.0-dev \
  libatk-wrapper-java-jni \
  libatk-wrapper-java \
  libatk1.0-0 \
  libatk1.0-0 \
  libatk1.0-data \
  libatk1.0-dev \
  libatkmm-1.6-1v5 \
  libatkmm-1.6-dev \
  libatm1 \
  libatomic1 \
  libatomic1 \
  libatopology2 \
  libatspi2.0-0 \
  libatspi2.0-0 \
  libatspi2.0-dev \
  libattr1 \
  libaudit-common \
  libaudit1 \
  libauthen-sasl-perl \
  libavahi-client3 \
  libavahi-client3 \
  libavahi-common-data \
  libavahi-common-data \
  libavahi-common3 \
  libavahi-common3 \
  libavahi-core7 \
  libavahi-glib1 \
  libavahi-ui-gtk3-0 \
  libavc1394-0 \
  libavcodec-extra58 \
  libavcodec-extra \
  libavfilter7 \
  libavformat58 \
  libavutil56 \
  libayatana-appindicator3-1 \
  libayatana-appindicator3-dev \
  libayatana-ido3-0.4-0 \
  libayatana-ido3-dev \
  libayatana-indicator3-7 \
  libayatana-indicator3-dev \
  libbabeltrace1 \
  libbdplus0 \
  libbinutils \
  libblas3 \
  libblkid-dev \
  libblkid1 \
  libblkid1 \
  libblockdev-crypto2 \
  libblockdev-fs2 \
  libblockdev-loop2 \
  libblockdev-part-err2 \
  libblockdev-part2 \
  libblockdev-swap2 \
  libblockdev-utils2 \
  libblockdev2 \
  libbluetooth3 \
  libbluray2 \
  libboost-filesystem1.74.0 \
  libboost-iostreams1.74.0 \
  libboost-locale1.74.0 \
  libboost-regex1.74.0 \
  libboost-thread1.74.0 \
  libbpf0 \
  libbrlapi0.8 \
  libbrotli-dev \
  libbrotli1 \
  libbrotli1 \
  libbs2b0 \
  libbsd0 \
  libbsd0 \
  libburn4 \
  libbz2-1.0 \
  libbz2-1.0 \
  libc++1-14 \
  libc++1 \
  libc++abi1-14 \
  libc-bin \
  libc-dev-bin \
  libc-devtools \
  libc6-dbg \
  libc6-dev \
  libc6-i386 \
  libc6 \
  libc6 \
  libcaca-dev \
  libcaca0 \
  libcacard0 \
  libcairo-gobject-perl \
  libcairo-gobject2 \
  libcairo-gobject2 \
  libcairo-perl \
  libcairo-script-interpreter2 \
  libcairo2-dev \
  libcairo2 \
  libcairo2 \
  libcairomm-1.0-1v5 \
  libcairomm-1.0-dev \
  libcamel-1.2-63 \
  libcanberra-gtk-module \
  libcanberra-gtk0 \
  libcanberra-gtk3-0 \
  libcanberra-gtk3-module \
  libcanberra-pulse \
  libcanberra0 \
  libcanberra0 \
  libcap-ng0 \
  libcap2-bin \
  libcap2 \
  libcap2 \
  libcapi20-3 \
  libcapi20-3 \
  libcarp-always-perl \
  libcbor0.8 \
  libcc1-0 \
  libcdio-cdda2 \
  libcdio-paranoia2 \
  libcdio19 \
  libcdparanoia0 \
  libcdparanoia0 \
  libcdr-0.1-1 \
  libcdt5 \
  libcgi-fast-perl \
  libcgi-pm-perl \
  libcgraph6 \
  libcharon-extauth-plugins \
  libcheese-gtk25 \
  libcheese8 \
  libchromaprint1 \
  libclang-common-14-dev \
  libclang-cpp14 \
  libclang1-14 \
  libclass-accessor-perl \
  libclass-data-inheritable-perl \
  libclone-perl \
  libclucene-contribs1v5 \
  libclucene-core1v5 \
  libclutter-1.0-0 \
  libclutter-1.0-common \
  libclutter-gst-3.0-0 \
  libclutter-gtk-1.0-0 \
  libcodec2-1.0 \
  libcogl-common \
  libcogl-pango20 \
  libcogl-path20 \
  libcogl20 \
  libcolamd2 \
  libcolord-gtk1 \
  libcolord2 \
  libcolorhug2 \
  libcom-err2 \
  libcom-err2 \
  libcommon-sense-perl \
  libcpanel-json-xs-perl \
  libcrack2 \
  libcrypt-dev \
  libcrypt-openssl-bignum-perl \
  libcrypt-openssl-random-perl \
  libcrypt-openssl-rsa-perl \
  libcrypt1 \
  libcrypt1 \
  libcryptsetup12 \
  libctf-nobfd0 \
  libctf0 \
  libcue2 \
  libcups2 \
  libcups2 \
  libcupsfilters1 \
  libcupsimage2 \
  libcurl3-gnutls \
  libcurl3-gnutls \
  libcurl4 \
  libcurl4 \
  libdaemon0 \
  libdata-dump-perl \
  libdatrie-dev \
  libdatrie1 \
  libdatrie1 \
  libdav1d5 \
  libdaxctl1 \
  libdazzle-1.0-0 \
  libdazzle-common \
  libdb5.3 \
  libdb5.3 \
  libdbus-1-3 \
  libdbus-1-3 \
  libdbus-1-dev \
  libdbus-glib-1-2 \
  libdbus-glib-1-dev-bin \
  libdbus-glib-1-dev \
  libdbusmenu-glib-dev \
  libdbusmenu-glib4 \
  libdbusmenu-gtk3-4 \
  libdbusmenu-gtk4 \
  libdconf1 \
  libde265-0 \
  libdebconfclient0 \
  libdebuginfod-common \
  libdebuginfod1 \
  libdecor-0-0 \
  libdecor-0-0 \
  libdecor-0-plugin-1-cairo \
  libdecor-0-plugin-1-cairo \
  libdee-1.0-4 \
  libdeflate-dev \
  libdeflate0 \
  libdeflate0 \
  libdevmapper-event1.02.1 \
  libdevmapper1.02.1 \
  libdigest-hmac-perl \
  libdjvulibre-text \
  libdjvulibre21 \
  libdmapsharing-3.0-2 \
  libdns-export1110 \
  libdotconf0 \
  libdouble-conversion3 \
  libdpkg-perl \
  libdrm-amdgpu1 \
  libdrm-amdgpu1 \
  libdrm-common \
  libdrm-intel1 \
  libdrm-nouveau2 \
  libdrm-nouveau2 \
  libdrm-radeon1 \
  libdrm-radeon1 \
  libdrm2 \
  libdrm2 \
  libdv4 \
  libdvdread8 \
  libdw1 \
  libdw1 \
  libe-book-0.1-1 \
  libebackend-1.2-10 \
  libebook-1.2-20 \
  libebook-contacts-1.2-3 \
  libecal-2.0-1 \
  libedata-book-1.2-26 \
  libedata-cal-2.0-1 \
  libedataserver-1.2-26 \
  libedataserverui-1.2-3 \
  libedit2 \
  libedit2 \
  libefiboot1 \
  libefivar1 \
  libegl-dev \
  libegl-mesa0 \
  libegl1-mesa-dev \
  libegl1-mesa \
  libegl1 \
  libelf1 \
  libelf1 \
  libenchant-2-2 \
  libencode-locale-perl \
  libeot0 \
  libepoxy-dev \
  libepoxy0 \
  libepubgen-0.1-1 \
  liberror-perl \
  libespeak-ng1 \
  libestr0 \
  libetonyek-0.1-1 \
  libevdev2 \
  libevdocument3-4 \
  libevent-2.1-7 \
  libevview3-3 \
  libexempi8 \
  libexif12 \
  libexif12 \
  libexiv2-27 \
  libexpat1-dev \
  libexpat1 \
  libexpat1 \
  libext2fs2 \
  libexttextcat-2.0-0 \
  libexttextcat-data \
  libextutils-depends-perl \
  libfakeroot \
  libfastjson4 \
  libfcgi-bin \
  libfcgi-perl \
  libfcgi0ldbl \
  libfdisk1 \
  libfdt1 \
  libffi-dev \
  libffi8 \
  libffi8 \
  libfftw3-double3 \
  libfftw3-single3 \
  libfido2-1 \
  libfile-basedir-perl \
  libfile-copy-recursive-perl \
  libfile-desktopentry-perl \
  libfile-fcntllock-perl \
  libfile-listing-perl \
  libfile-mimeinfo-perl \
  libfile-which-perl \
  libfl-dev \
  libfl2 \
  libflac8 \
  libflac8 \
  libflatpak0 \
  libflite1 \
  libfont-afm-perl \
  libfontconfig-dev \
  libfontconfig1-dev \
  libfontconfig1 \
  libfontconfig1 \
  libfontembed1 \
  libfontenc1 \
  libfprint-2-2 \
  libfreehand-0.1-1 \
  libfreerdp-client2-2 \
  libfreerdp-server2-2 \
  libfreerdp2-2 \
  libfreetype-dev \
  libfreetype6-dev \
  libfreetype6 \
  libfreetype6 \
  libfribidi-dev \
  libfribidi0 \
  libfribidi0 \
  libfuse2 \
  libfuse3-3 \
  libfwupd2 \
  libfwupdplugin5 \
  libgail-common \
  libgail-common \
  libgail18 \
  libgail18 \
  libgamemode0 \
  libgamemodeauto0 \
  libgbm1 \
  libgbm1 \
  libgc1 \
  libgcab-1.0-0 \
  libgcc-11-dev \
  libgcc-12-dev \
  libgcc-s1 \
  libgcc-s1 \
  libgck-1-0 \
  libgconf-2-4 \
  libgcr-base-3-1 \
  libgcr-ui-3-1 \
  libgcrypt20 \
  libgcrypt20 \
  libgd3 \
  libgd3 \
  libgda-5.0-4 \
  libgda-5.0-common \
  libgdata-common \
  libgdata22 \
  libgdbm-compat4 \
  libgdbm-compat4 \
  libgdbm6 \
  libgdbm6 \
  libgdiplus \
  libgdk-pixbuf-2.0-0 \
  libgdk-pixbuf-2.0-0 \
  libgdk-pixbuf-2.0-dev \
  libgdk-pixbuf-xlib-2.0-0 \
  libgdk-pixbuf-xlib-2.0-dev \
  libgdk-pixbuf2.0-bin \
  libgdk-pixbuf2.0-common \
  libgdk-pixbuf2.0-dev \
  libgdm1 \
  libgee-0.8-2 \
  libgeoclue-2-0 \
  libgeocode-glib0 \
  libgexiv2-2 \
  libgfapi0 \
  libgfortran5 \
  libgfrpc0 \
  libgfxdr0 \
  libgif7 \
  libgirepository-1.0-1 \
  libgirepository1.0-dev \
  libgjs0g \
  libgl-dev \
  libgl1-amber-dri \
  libgl1-mesa-dri \
  libgl1-mesa-dri \
  libgl1-mesa-glx \
  libgl1 \
  libgl1 \
  libglapi-mesa \
  libglapi-mesa \
  libgles-dev \
  libgles1 \
  libgles2 \
  libglib-object-introspection-perl \
  libglib-perl \
  libglib2.0-0 \
  libglib2.0-0 \
  libglib2.0-bin \
  libglib2.0-cil \
  libglib2.0-data \
  libglib2.0-dev-bin \
  libglib2.0-dev \
  libglib2.0-doc \
  libglib3.0-cil \
  libglibmm-2.4-1v5 \
  libglibmm-2.4-dev \
  libglibmm-2.4-doc \
  libglu1-mesa-dev \
  libglu1-mesa \
  libglu1-mesa \
  libglusterfs0 \
  libglvnd-core-dev \
  libglvnd-dev \
  libglvnd0 \
  libglvnd0 \
  libglx-dev \
  libglx-mesa0 \
  libglx-mesa0 \
  libglx0 \
  libglx0 \
  libgme0 \
  libgmp10 \
  libgmp10 \
  libgnome-autoar-0-0 \
  libgnome-bg-4-1 \
  libgnome-bluetooth-3.0-13 \
  libgnome-bluetooth13 \
  libgnome-desktop-3-19 \
  libgnome-desktop-4-1 \
  libgnome-games-support-1-3 \
  libgnome-games-support-common \
  libgnome-menu-3-0 \
  libgnome-todo \
  libgnomekbd-common \
  libgnomekbd8 \
  libgnutls30 \
  libgnutls30 \
  libgoa-1.0-0b \
  libgoa-1.0-common \
  libgoa-backend-1.0-1 \
  libgom-1.0-0 \
  libgomp1 \
  libgoocanvas-2.0-9 \
  libgoocanvas-2.0-common \
  libgoocanvas2-cairotypes-perl \
  libgoocanvas2-perl \
  libgovirt-common \
  libgovirt2 \
  libgpg-error-l10n \
  libgpg-error0 \
  libgpg-error0 \
  libgpgme11 \
  libgpgmepp6 \
  libgphoto2-6 \
  libgphoto2-6 \
  libgphoto2-l10n \
  libgphoto2-port12 \
  libgphoto2-port12 \
  libgpm2 \
  libgpm2 \
  libgpod-common \
  libgpod4 \
  libgraphene-1.0-0 \
  libgraphene-1.0-dev \
  libgraphite2-3 \
  libgraphite2-3 \
  libgraphite2-dev \
  libgrilo-0.3-0 \
  libgs9-common \
  libgs9 \
  libgsf-1-114 \
  libgsf-1-common \
  libgsm1 \
  libgsm1 \
  libgsound0 \
  libgspell-1-2 \
  libgspell-1-common \
  libgssapi-krb5-2 \
  libgssapi-krb5-2 \
  libgssdp-1.2-0 \
  libgstreamer-gl1.0-0 \
  libgstreamer-plugins-bad1.0-0 \
  libgstreamer-plugins-base1.0-0 \
  libgstreamer-plugins-base1.0-0 \
  libgstreamer-plugins-good1.0-0 \
  libgstreamer1.0-0 \
  libgstreamer1.0-0 \
  libgtk-3-0 \
  libgtk-3-bin \
  libgtk-3-common \
  libgtk-3-dev \
  libgtk-4-1 \
  libgtk-4-bin \
  libgtk-4-common \
  libgtk-4-dev \
  libgtk-4-doc \
  libgtk-vnc-2.0-0 \
  libgtk2.0-0 \
  libgtk2.0-0 \
  libgtk2.0-bin \
  libgtk2.0-cil \
  libgtk2.0-common \
  libgtk3-imageview-perl \
  libgtk3-perl \
  libgtkmm-3.0-1v5 \
  libgtkmm-3.0-dev \
  libgtkmm-3.0-doc \
  libgtksourceview-4-0 \
  libgtksourceview-4-common \
  libgtop-2.0-11 \
  libgtop2-common \
  libgtop2-dev \
  libgts-0.7-5 \
  libgts-bin \
  libgudev-1.0-0 \
  libgupnp-1.2-1 \
  libgupnp-av-1.0-3 \
  libgupnp-dlna-2.0-4 \
  libgusb2 \
  libgvc6 \
  libgvnc-1.0-0 \
  libgvpr2 \
  libgweather-3-16 \
  libgweather-common \
  libgxps2 \
  libhandy-1-0 \
  libharfbuzz-dev \
  libharfbuzz-gobject0 \
  libharfbuzz-icu0 \
  libharfbuzz0b \
  libharfbuzz0b \
  libheif1 \
  libhidapi-dev \
  libhidapi-hidraw0 \
  libhidapi-libusb0 \
  libhogweed6 \
  libhogweed6 \
  libhpmud0 \
  libhtml-form-perl \
  libhtml-format-perl \
  libhtml-parser-perl \
  libhtml-tagset-perl \
  libhtml-tree-perl \
  libhttp-cookies-perl \
  libhttp-daemon-perl \
  libhttp-date-perl \
  libhttp-message-perl \
  libhttp-negotiate-perl \
  libhttp-server-simple-perl \
  libhunspell-1.7-0 \
  libhyphen0 \
  libibus-1.0-5 \
  libibverbs1 \
  libical3 \
  libice-dev \
  libice6 \
  libicu-dev \
  libicu70 \
  libicu70 \
  libidn12 \
  libidn2-0 \
  libidn2-0 \
  libiec61883-0 \
  libieee1284-3 \
  libieee1284-3 \
  libigdgmm12 \
  libijs-0.35 \
  libilmbase25 \
  libimage-exiftool-perl \
  libimage-magick-perl \
  libimage-magick-q16-perl \
  libimagequant0 \
  libimobiledevice6 \
  libinih1 \
  libinput-bin \
  libinput10 \
  libio-html-perl \
  libio-socket-ssl-perl \
  libio-stringy-perl \
  libip4tc2 \
  libip6tc2 \
  libipc-system-simple-perl \
  libipt2 \
  libisc-export1105 \
  libiscsi7 \
  libisl23 \
  libisoburn1 \
  libisofs6 \
  libitm1 \
  libiw30 \
  libjack-jackd2-0 \
  libjack-jackd2-0 \
  libjansson4 \
  libjavascriptcoregtk-4.0-18 \
  libjavascriptcoregtk-4.0-bin \
  libjavascriptcoregtk-4.0-dev \
  libjbig-dev \
  libjbig0 \
  libjbig0 \
  libjbig2dec0 \
  libjcat1 \
  libjpeg-dev \
  libjpeg-turbo8-dev \
  libjpeg-turbo8 \
  libjpeg-turbo8 \
  libjpeg8-dev \
  libjpeg8 \
  libjpeg8 \
  libjq1 \
  libjs-jquery \
  libjs-sphinxdoc \
  libjs-underscore \
  libjson-c5 \
  libjson-glib-1.0-0 \
  libjson-glib-1.0-common \
  libjson-maybexs-perl \
  libjson-perl \
  libjson-xs-perl \
  libjte2 \
  libjxr-tools \
  libjxr0 \
  libk5crypto3 \
  libk5crypto3 \
  libkeybinder-3.0-0 \
  libkeyutils1 \
  libkeyutils1 \
  libklibc \
  libkmod2 \
  libkpathsea6 \
  libkrb5-3 \
  libkrb5-3 \
  libkrb5support0 \
  libkrb5support0 \
  libksba8 \
  liblab-gamut1 \
  liblangtag-common \
  liblangtag1 \
  liblapack3 \
  liblcms2-2 \
  liblcms2-2 \
  liblcms2-utils \
  libldap-2.5-0 \
  libldap-2.5-0 \
  libldap-common \
  libldb2 \
  liblilv-0-0 \
  liblirc-client0 \
  liblldb-14 \
  libllvm13 \
  libllvm13 \
  libllvm14 \
  libllvm15 \
  libllvm15 \
  liblmdb0 \
  liblocale-gettext-perl \
  liblouis-data \
  liblouis20 \
  liblouisutdml-bin \
  liblouisutdml-data \
  liblouisutdml9 \
  liblqr-1-0 \
  liblsan0 \
  libltdl-dev \
  libltdl7 \
  libltdl7 \
  liblua5.3-0 \
  libluajit-5.1-2 \
  libluajit-5.1-common \
  liblvm2cmd2.03 \
  liblwp-mediatypes-perl \
  liblwp-protocol-https-perl \
  liblz4-1 \
  liblz4-1 \
  liblzma-dev \
  liblzma5 \
  liblzma5 \
  liblzo2-2 \
  libmagic-mgc \
  libmagic1 \
  libmagickcore-6.q16-6-extra \
  libmagickcore-6.q16-6 \
  libmagickwand-6.q16-6 \
  libmailtools-perl \
  libmalcontent-0-0 \
  libmanette-0.2-0 \
  libmaxminddb0 \
  libmbim-glib4 \
  libmbim-proxy \
  libmd0 \
  libmd0 \
  libmd4c0 \
  libmecab-dev \
  libmecab2 \
  libmediaart-2.0-0 \
  libmessaging-menu0 \
  libmfx1 \
  libmhash2 \
  libmime-charset-perl \
  libminiupnpc17 \
  libmm-glib0 \
  libmnl0 \
  libmono-addins-gui0.2-cil \
  libmono-addins0.2-cil \
  libmono-btls-interface4.0-cil \
  libmono-cairo4.0-cil \
  libmono-corlib4.5-cil \
  libmono-corlib4.5-dll \
  libmono-i18n-west4.0-cil \
  libmono-i18n4.0-cil \
  libmono-posix4.0-cil \
  libmono-security4.0-cil \
  libmono-sharpzip4.84-cil \
  libmono-system-configuration4.0-cil \
  libmono-system-core4.0-cil \
  libmono-system-drawing4.0-cil \
  libmono-system-numerics4.0-cil \
  libmono-system-security4.0-cil \
  libmono-system-xml4.0-cil \
  libmono-system4.0-cil \
  libmount-dev \
  libmount1 \
  libmount1 \
  libmozjs-91-0 \
  libmp3lame0 \
  libmpc3 \
  libmpdec3 \
  libmpeg2-4 \
  libmpfr6 \
  libmpg123-0 \
  libmsgpackc2 \
  libmspack0 \
  libmspub-0.1-1 \
  libmtdev1 \
  libmtp-common \
  libmtp-runtime \
  libmtp9 \
  libmutter-10-0 \
  libmwaw-0.3-3 \
  libmysofa1 \
  libmythes-1.2-0 \
  libnatpmp1 \
  libnautilus-extension1a \
  libncurses-dev \
  libncurses6 \
  libncurses6 \
  libncursesw6 \
  libndctl6 \
  libndp0 \
  libnet-dbus-glib-perl \
  libnet-dbus-perl \
  libnet-http-perl \
  libnet-oauth-perl \
  libnet-smtp-ssl-perl \
  libnet-ssleay-perl \
  libnetfilter-conntrack3 \
  libnetpbm10 \
  libnetplan0 \
  libnettle8 \
  libnettle8 \
  libnewt0.52 \
  libnfnetlink0 \
  libnfs13 \
  libnftables1 \
  libnftnl11 \
  libnghttp2-14 \
  libnghttp2-14 \
  libnl-3-200 \
  libnl-genl-3-200 \
  libnl-route-3-200 \
  libnm0 \
  libnma-common \
  libnma0 \
  libnorm1 \
  libnotify-bin \
  libnotify4 \
  libnpth0 \
  libnsl-dev \
  libnsl2 \
  libnsl2 \
  libnspr4 \
  libnspr4 \
  libnss-mdns \
  libnss-myhostname \
  libnss-mymachines \
  libnss-nis \
  libnss-nisplus \
  libnss-systemd \
  libnss3 \
  libnss3 \
  libntfs-3g89 \
  libnuma1 \
  libnumber-bytes-human-perl \
  libnvidia-cfg1-515 \
  libnvidia-common-515 \
  libnvidia-compute-515 \
  libnvidia-compute-515 \
  libnvidia-container-tools \
  libnvidia-container1 \
  libnvidia-decode-515 \
  libnvidia-decode-515 \
  libnvidia-egl-wayland1 \
  libnvidia-encode-515 \
  libnvidia-encode-515 \
  libnvidia-extra-515 \
  libnvidia-fbc1-515 \
  libnvidia-fbc1-515 \
  libnvidia-gl-515 \
  libnvidia-gl-515 \
  libobjc-11-dev \
  libobjc4 \
  libodbc1 \
  libodbc1 \
  libodbc2 \
  libodbc2 \
  libodbccr2 \
  libodbccr2 \
  libodfgen-0.1-1 \
  libogg0 \
  libogg0 \
  libonig5 \
  libopencore-amrnb0 \
  libopencore-amrwb0 \
  libopenexr25 \
  libopengl-dev \
  libopengl0 \
  libopengl0 \
  libopenjp2-7 \
  libopenjp2-7 \
  libopenmpt0 \
  libopus0 \
  libopus0 \
  liborc-0.4-0 \
  liborc-0.4-0 \
  liborcus-0.17-0 \
  liborcus-parser-0.17-0 \
  libosinfo-1.0-0 \
  libosmesa6 \
  libosmesa6 \
  libostree-1-1 \
  libp11-kit0 \
  libp11-kit0 \
  libpackagekit-glib2-18 \
  libpagemaker-0.0-0 \
  libpam-cap \
  libpam-fprintd \
  libpam-gnome-keyring \
  libpam-modules-bin \
  libpam-modules \
  libpam-pwquality \
  libpam-runtime \
  libpam-sss \
  libpam-systemd \
  libpam0g \
  libpango-1.0-0 \
  libpango-1.0-0 \
  libpango-perl \
  libpango1.0-dev \
  libpango1.0-doc \
  libpangocairo-1.0-0 \
  libpangocairo-1.0-0 \
  libpangoft2-1.0-0 \
  libpangoft2-1.0-0 \
  libpangomm-1.4-1v5 \
  libpangomm-1.4-dev \
  libpangoxft-1.0-0 \
  libpaper-utils \
  libpaper1 \
  libparted-fs-resize0 \
  libparted2 \
  libpath-class-perl \
  libpathplan4 \
  libpcap0.8 \
  libpcap0.8 \
  libpcaudio0 \
  libpci3 \
  libpci3 \
  libpciaccess0 \
  libpcre16-3 \
  libpcre2-16-0 \
  libpcre2-32-0 \
  libpcre2-8-0 \
  libpcre2-8-0 \
  libpcre2-dev \
  libpcre2-posix3 \
  libpcre3-dev \
  libpcre32-3 \
  libpcre3 \
  libpcre3 \
  libpcrecpp0v5 \
  libpcsclite1 \
  libpeas-1.0-0 \
  libpeas-common \
  libperl5.34 \
  libperl5.34 \
  libpfm4 \
  libpgm-5.3-0 \
  libphodav-2.0-0 \
  libphodav-2.0-common \
  libphonenumber8 \
  libpipeline1 \
  libpipewire-0.3-0 \
  libpipewire-0.3-common \
  libpipewire-0.3-modules \
  libpixman-1-0 \
  libpixman-1-0 \
  libpixman-1-dev \
  libpkcs11-helper1 \
  libplist3 \
  libplymouth5 \
  libpmem1 \
  libpmemobj1 \
  libpng-dev \
  libpng-tools \
  libpng16-16 \
  libpng16-16 \
  libpocketsphinx3 \
  libpolkit-agent-1-0 \
  libpolkit-gobject-1-0 \
  libpoppler-cpp0v5 \
  libpoppler-glib8 \
  libpoppler-glib8 \
  libpoppler118 \
  libpoppler118 \
  libpopt0 \
  libpostproc55 \
  libproc-processtable-perl \
  libproc-simple-perl \
  libprocps8 \
  libprotobuf23 \
  libproxy1-plugin-gsettings \
  libproxy1-plugin-networkmanager \
  libproxy1v5 \
  libpsl-dev \
  libpsl5 \
  libpsl5 \
  libpthread-stubs0-dev \
  libpulse-dev \
  libpulse-mainloop-glib0 \
  libpulse0 \
  libpulse0 \
  libpulsedsp \
  libpwquality-common \
  libpwquality1 \
  libpython3-dev \
  libpython3-stdlib \
  libpython3.10-dev \
  libpython3.10-minimal \
  libpython3.10-stdlib \
  libpython3.10 \
  libqmi-glib5 \
  libqmi-proxy \
  libqpdf28 \
  libqqwing2v5 \
  libqscintilla2-qt5-15 \
  libqscintilla2-qt5-l10n \
  libqt5core5a \
  libqt5dbus5 \
  libqt5gui5 \
  libqt5network5 \
  libqt5printsupport5 \
  libqt5svg5 \
  libqt5widgets5 \
  libqt5xml5 \
  libquadmath0 \
  librabbitmq4 \
  librados2 \
  libraptor2-0 \
  libraqm0 \
  librasqal3 \
  libraw1394-11 \
  libraw20 \
  librbd1 \
  librdf0 \
  librdmacm1 \
  libreadline8 \
  libreadonly-perl \
  librecode0 \
  libreoffice-base-core \
  libreoffice-calc \
  libreoffice-common \
  libreoffice-core \
  libreoffice-draw \
  libreoffice-gnome \
  libreoffice-gtk3 \
  libreoffice-help-common \
  libreoffice-help-en-us \
  libreoffice-help-ja \
  libreoffice-impress \
  libreoffice-l10n-ja \
  libreoffice-math \
  libreoffice-ogltrans \
  libreoffice-pdfimport \
  libreoffice-style-breeze \
  libreoffice-style-colibre \
  libreoffice-style-elementary \
  libreoffice-style-yaru \
  libreoffice-writer \
  librest-0.7-0 \
  librevenge-0.0-0 \
  librhythmbox-core10 \
  librsvg2-2 \
  librsvg2-2 \
  librsvg2-common \
  librsvg2-common \
  librsvg2-dev \
  librsync2 \
  librtmp1 \
  librtmp1 \
  librubberband2 \
  libruby3.0 \
  librygel-core-2.6-2 \
  librygel-db-2.6-2 \
  librygel-renderer-2.6-2 \
  librygel-server-2.6-2 \
  libsamplerate0 \
  libsamplerate0 \
  libsane-common \
  libsane-hpaio \
  libsane1 \
  libsane1 \
  libsasl2-2 \
  libsasl2-2 \
  libsasl2-modules-db \
  libsasl2-modules-db \
  libsasl2-modules-gssapi-mit \
  libsasl2-modules \
  libsasl2-modules \
  libsbc1 \
  libsdl-pango-dev \
  libsdl-pango1 \
  libsdl1.2-dev \
  libsdl1.2debian \
  libsdl2-2.0-0 \
  libsdl2-2.0-0 \
  libseccomp2 \
  libsecret-1-0 \
  libsecret-common \
  libselinux1-dev \
  libselinux1 \
  libselinux1 \
  libsemanage-common \
  libsemanage2 \
  libsensors-config \
  libsensors5 \
  libsensors5 \
  libsepol-dev \
  libsepol2 \
  libserd-0-0 \
  libsgutils2-2 \
  libshine3 \
  libshout3 \
  libsidplay1v5 \
  libsigc++-2.0-0v5 \
  libsigc++-2.0-dev \
  libsigsegv2 \
  libslang2-dev \
  libslang2 \
  libslirp0 \
  libsm-dev \
  libsm6 \
  libsmartcols1 \
  libsmbclient \
  libsmbios-c2 \
  libsnapd-glib1 \
  libsnappy1v5 \
  libsndfile1 \
  libsndfile1 \
  libsnmp-base \
  libsnmp40 \
  libsnmp40 \
  libsodium23 \
  libsombok3 \
  libsonic0 \
  libsord-0-0 \
  libsort-naturally-perl \
  libsoup-3.0-0 \
  libsoup-3.0-common \
  libsoup-gnome2.4-1 \
  libsoup2.4-1 \
  libsoup2.4-cil-dev \
  libsoup2.4-cil \
  libsoup2.4-common \
  libsoup2.4-dev \
  libsoup2.4-doc \
  libsoup2.4-tests \
  libsource-highlight-common \
  libsource-highlight4v5 \
  libsoxr0 \
  libspa-0.2-modules \
  libspectre1 \
  libspeechd2 \
  libspeex1 \
  libspeexdsp1 \
  libsphinxbase3 \
  libspice-client-glib-2.0-8 \
  libspice-client-gtk-3.0-5 \
  libspice-server1 \
  libsqlite3-0 \
  libsqlite3-0 \
  libsqlite3-dev \
  libsratom-0-0 \
  libsrt1.4-gnutls \
  libss2 \
  libssh-4 \
  libssh-4 \
  libssh-gcrypt-4 \
  libssl-dev \
  libssl1.1 \
  libssl3 \
  libssl3 \
  libstartup-notification0 \
  libstdc++-11-dev \
  libstdc++6 \
  libstdc++6 \
  libstemmer0d \
  libstrongswan-standard-plugins \
  libstrongswan \
  libsub-name-perl \
  libsuitesparseconfig5 \
  libswresample3 \
  libswscale5 \
  libsynctex2 \
  libsysmetrics1 \
  libsystemd0 \
  libsystemd0 \
  libtag1v5-vanilla \
  libtag1v5 \
  libtalloc2 \
  libtasn1-6 \
  libtasn1-6 \
  libtcl8.6 \
  libtdb1 \
  libtdb1 \
  libteamdctl0 \
  libtermkey1 \
  libtevent0 \
  libtext-charwidth-perl \
  libtext-engine-0.1-0 \
  libtext-iconv-perl \
  libtext-wrapi18n-perl \
  libthai-data \
  libthai-dev \
  libthai0 \
  libthai0 \
  libtheora0 \
  libtheora0 \
  libtie-ixhash-perl \
  libtiff-dev \
  libtiff5 \
  libtiff5 \
  libtiffxx5 \
  libtimedate-perl \
  libtinfo-dev \
  libtinfo6 \
  libtinfo6 \
  libtirpc-common \
  libtirpc-dev \
  libtirpc3 \
  libtirpc3 \
  libtk8.6 \
  libtool \
  libtotem-plparser-common \
  libtotem-plparser18 \
  libtotem0 \
  libtpms0 \
  libtracker-sparql-3.0-0 \
  libtree-sitter0 \
  libtry-tiny-perl \
  libtsan0 \
  libtsan2 \
  libtss2-esys-3.0.2-0 \
  libtss2-mu0 \
  libtss2-sys1 \
  libtss2-tcti-cmd0 \
  libtss2-tcti-device0 \
  libtss2-tcti-mssim0 \
  libtss2-tcti-swtpm0 \
  libtwolame0 \
  libtypes-serialiser-perl \
  libu2f-udev \
  libubsan1 \
  libuchardet0 \
  libudev1 \
  libudev1 \
  libudfread0 \
  libudisks2-0 \
  libunibilium4 \
  libunicode-linebreak-perl \
  libunistring2 \
  libunistring2 \
  libunity-protocol-private0 \
  libunity-scopes-json-def-desktop \
  libunity9 \
  libuno-cppu3 \
  libuno-cppuhelpergcc3-3 \
  libuno-purpenvhelpergcc3-3 \
  libuno-sal3 \
  libuno-salhelpergcc3-3 \
  libunwind-14 \
  libunwind8 \
  libunwind8 \
  libupower-glib3 \
  liburi-perl \
  liburing2 \
  libusb-1.0-0 \
  libusb-1.0-0 \
  libusbmuxd6 \
  libusbredirhost1 \
  libusbredirparser1 \
  libuuid-perl \
  libuuid1 \
  libuuid1 \
  libuv1 \
  libv4l-0 \
  libv4l-0 \
  libv4lconvert0 \
  libv4lconvert0 \
  libva-drm2 \
  libva-wayland2 \
  libva-x11-2 \
  libva2 \
  libvdpau1 \
  libvidstab1.1 \
  libvirglrenderer1 \
  libvirt-clients \
  libvirt-daemon-config-network \
  libvirt-daemon-config-nwfilter \
  libvirt-daemon-driver-qemu \
  libvirt-daemon-system-systemd \
  libvirt-daemon-system \
  libvirt-daemon \
  libvirt-glib-1.0-0 \
  libvirt-glib-1.0-data \
  libvirt0 \
  libvisio-0.1-1 \
  libvisual-0.4-0 \
  libvisual-0.4-0 \
  libvncclient1 \
  libvncserver1 \
  libvo-amrwbenc0 \
  libvolume-key1 \
  libvorbis0a \
  libvorbis0a \
  libvorbisenc2 \
  libvorbisenc2 \
  libvorbisfile3 \
  libvorbisfile3 \
  libvpx7 \
  libvte-2.91-0 \
  libvte-2.91-common \
  libvterm0 \
  libvulkan-dev \
  libvulkan1 \
  libvulkan1 \
  libwacom-bin \
  libwacom-common \
  libwacom9 \
  libwavpack1 \
  libwayland-bin \
  libwayland-client0 \
  libwayland-client0 \
  libwayland-cursor0 \
  libwayland-cursor0 \
  libwayland-dev \
  libwayland-egl1 \
  libwayland-egl1 \
  libwayland-server0 \
  libwayland-server0 \
  libwbclient0 \
  libwebkit2gtk-4.0-37 \
  libwebkit2gtk-4.0-dev \
  libwebp7 \
  libwebp7 \
  libwebpdemux2 \
  libwebpmux3 \
  libwebrtc-audio-processing1 \
  libwhoopsie-preferences0 \
  libwhoopsie0 \
  libwinpr2-2 \
  libwmf-0.2-7-gtk \
  libwmf-0.2-7 \
  libwmf0.2-7-gtk \
  libwmflite-0.2-7 \
  libwnck-3-0 \
  libwnck-3-common \
  libwoff1 \
  libwpd-0.10-10 \
  libwpg-0.3-3 \
  libwps-0.4-4 \
  libwrap0 \
  libwrap0 \
  libwww-mechanize-perl \
  libwww-perl \
  libwww-robotrules-perl \
  libx11-6 \
  libx11-6 \
  libx11-data \
  libx11-dev \
  libx11-protocol-other-perl \
  libx11-protocol-perl \
  libx11-xcb1 \
  libx11-xcb1 \
  libx264-163 \
  libx265-199 \
  libxapian30 \
  libxatracker2 \
  libxau-dev \
  libxau6 \
  libxau6 \
  libxaw7 \
  libxcb-cursor0 \
  libxcb-dri2-0 \
  libxcb-dri2-0 \
  libxcb-dri3-0 \
  libxcb-dri3-0 \
  libxcb-glx0 \
  libxcb-glx0 \
  libxcb-icccm4 \
  libxcb-image0 \
  libxcb-keysyms1 \
  libxcb-present0 \
  libxcb-present0 \
  libxcb-randr0 \
  libxcb-randr0 \
  libxcb-render-util0 \
  libxcb-render0-dev \
  libxcb-render0 \
  libxcb-render0 \
  libxcb-res0 \
  libxcb-shape0 \
  libxcb-shm0-dev \
  libxcb-shm0 \
  libxcb-shm0 \
  libxcb-sync1 \
  libxcb-sync1 \
  libxcb-util1 \
  libxcb-xfixes0 \
  libxcb-xfixes0 \
  libxcb-xinerama0 \
  libxcb-xinput0 \
  libxcb-xkb1 \
  libxcb-xtest0 \
  libxcb-xv0 \
  libxcb1-dev \
  libxcb1 \
  libxcb1 \
  libxcomposite-dev \
  libxcomposite1 \
  libxcomposite1 \
  libxcursor-dev \
  libxcursor1 \
  libxcursor1 \
  libxcvt0 \
  libxdamage-dev \
  libxdamage1 \
  libxdamage1 \
  libxdmcp-dev \
  libxdmcp6 \
  libxdmcp6 \
  libxext-dev \
  libxext6 \
  libxext6 \
  libxfixes-dev \
  libxfixes3 \
  libxfixes3 \
  libxfont2 \
  libxft-dev \
  libxft2 \
  libxi-dev \
  libxi6 \
  libxi6 \
  libxinerama-dev \
  libxinerama1 \
  libxinerama1 \
  libxkbcommon-dev \
  libxkbcommon-x11-0 \
  libxkbcommon0 \
  libxkbcommon0 \
  libxkbfile1 \
  libxkbregistry0 \
  libxklavier16 \
  libxml-libxml-perl \
  libxml-namespacesupport-perl \
  libxml-parser-perl \
  libxml-sax-base-perl \
  libxml-sax-expat-perl \
  libxml-sax-perl \
  libxml-simple-perl \
  libxml-twig-perl \
  libxml-xpathengine-perl \
  libxml2-dev \
  libxml2-utils \
  libxml2 \
  libxml2 \
  libxmlb2 \
  libxmlsec1-nss \
  libxmlsec1 \
  libxmu6 \
  libxmuu1 \
  libxnvctrl0 \
  libxpm4 \
  libxpm4 \
  libxrandr-dev \
  libxrandr2 \
  libxrandr2 \
  libxrender-dev \
  libxrender1 \
  libxrender1 \
  libxres1 \
  libxshmfence1 \
  libxshmfence1 \
  libxslt1.1 \
  libxslt1.1 \
  libxss1 \
  libxss1 \
  libxt-dev \
  libxt6 \
  libxtables12 \
  libxtst-dev \
  libxtst6 \
  libxv1 \
  libxvidcore4 \
  libxvmc1 \
  libxxf86dga1 \
  libxxf86vm1 \
  libxxf86vm1 \
  libxxhash0 \
  libyajl2 \
  libyaml-0-2 \
  libyaml-tiny-perl \
  libyelp0 \
  libz3-4 \
  libz3-dev \
  libzimg2 \
  libzmq5 \
  libzstd-dev \
  libzstd1 \
  libzstd1 \
  libzvbi-common \
  libzvbi0 \
  linux-base \
  linux-firmware \
  linux-generic-hwe-22.04 \
  linux-headers-5.15.0-53-generic \
  linux-headers-5.15.0-53 \
  linux-headers-5.15.0-60-generic \
  linux-headers-5.15.0-60 \
  linux-headers-5.19.0-32-generic \
  linux-headers-5.19.0-35-generic \
  linux-headers-generic-hwe-22.04 \
  linux-hwe-5.19-headers-5.19.0-32 \
  linux-hwe-5.19-headers-5.19.0-35 \
  linux-image-5.19.0-32-generic \
  linux-image-5.19.0-35-generic \
  linux-image-generic-hwe-22.04 \
  linux-libc-dev \
  linux-modules-5.19.0-32-generic \
  linux-modules-5.19.0-35-generic \
  linux-modules-extra-5.19.0-32-generic \
  linux-modules-extra-5.19.0-35-generic \
  linux-sound-base \
  lld-14 \
  lld \
  lldb-14 \
  lldb \
  llvm-14-dev \
  llvm-14-linker-tools \
  llvm-14-runtime \
  llvm-14-tools \
  llvm-14 \
  lm-sensors \
  locales \
  login \
  logrotate \
  logsave \
  lp-solve \
  lsb-base \
  lsb-release \
  lshw \
  lsof \
  lto-disabled-list \
  lua-luv \
  lvm2 \
  m4 \
  mailcap \
  make \
  man-db \
  manpages-dev \
  manpages \
  mawk \
  mdevctl \
  mecab-ipadic-utf8 \
  mecab-ipadic \
  mecab-jumandic-utf8 \
  mecab-jumandic \
  mecab-utils \
  mecab \
  media-player-info \
  media-types \
  memtest86+ \
  memtester \
  mesa-va-drivers \
  mesa-vdpau-drivers \
  mesa-vulkan-drivers \
  mesa-vulkan-drivers \
  mime-support \
  mm-common \
  mobile-broadband-provider-info \
  modemmanager \
  mokutil \
  mono-4.0-gac \
  mono-gac \
  mono-runtime-common \
  mono-runtime-sgen \
  mono-runtime \
  mount \
  mousetweaks \
  mozc-data \
  mozc-server \
  mozc-utils-gui \
  mscompress \
  msr-tools \
  mtr-tiny \
  mutter-common \
  mysql-client-core-8.0 \
  mythes-en-us \
  nano \
  nautilus-data \
  nautilus-extension-gnome-terminal \
  nautilus-sendto \
  nautilus-share \
  nautilus \
  ncurses-base \
  ncurses-bin \
  ncurses-term \
  neovim-qt \
  neovim-runtime \
  neovim \
  net-tools \
  netbase \
  netcat-openbsd \
  netpbm \
  netplan.io \
  network-manager-config-connectivity-ubuntu \
  network-manager-gnome \
  network-manager-l2tp-gnome \
  network-manager-l2tp \
  network-manager-openvpn-gnome \
  network-manager-openvpn \
  network-manager-pptp-gnome \
  network-manager-pptp \
  network-manager \
  networkd-dispatcher \
  nftables \
  ninja-build \
  nkf \
  nnn \
  ntfs-3g \
  nvidia-compute-utils-515 \
  nvidia-container-runtime \
  nvidia-container-toolkit-base \
  nvidia-container-toolkit \
  nvidia-dkms-515 \
  nvidia-docker2 \
  nvidia-driver-515 \
  nvidia-kernel-common-515 \
  nvidia-kernel-source-515 \
  nvidia-prime \
  nvidia-settings \
  nvidia-utils-515 \
  ocl-icd-libopencl1 \
  ocl-icd-libopencl1 \
  openjdk-18-jdk-headless \
  openjdk-18-jdk \
  openjdk-18-jre-headless \
  openjdk-18-jre \
  openprinting-ppds \
  openssh-client \
  openssh-server \
  openssh-sftp-server \
  openssl \
  openvpn \
  orca \
  os-prober \
  osinfo-db \
  ovmf \
  p11-kit-modules \
  p11-kit \
  p7zip-full \
  p7zip \
  packagekit-tools \
  packagekit \
  pango1.0-tools \
  papirus-icon-theme \
  parted \
  passwd \
  patch \
  pci.ids \
  pciutils \
  pcmciautils \
  perl-base \
  perl-modules-5.34 \
  perl-openssl-defaults \
  perl \
  php-common \
  php8.1-cli \
  php8.1-common \
  php8.1-opcache \
  php8.1-readline \
  php8.1 \
  php \
  pigz \
  pinentry-curses \
  pinentry-gnome3 \
  pinta \
  pipewire-bin \
  pipewire-media-session \
  pipewire \
  pkexec \
  pkg-config \
  plymouth-label \
  plymouth-theme-spinner \
  plymouth-theme-ubuntu-text \
  plymouth \
  pocketsphinx-en-us \
  policykit-1 \
  policykit-desktop-privileges \
  polkitd \
  poppler-data \
  poppler-utils \
  power-profiles-daemon \
  powermgmt-base \
  ppp \
  pptp-linux \
  printer-driver-brlaser \
  printer-driver-c2esp \
  printer-driver-foo2zjs-common \
  printer-driver-foo2zjs \
  printer-driver-hpcups \
  printer-driver-m2300w \
  printer-driver-min12xxw \
  printer-driver-pnm2ppa \
  printer-driver-postscript-hp \
  printer-driver-ptouch \
  printer-driver-pxljr \
  printer-driver-sag-gdi \
  printer-driver-splix \
  procps \
  psensor-common \
  psensor \
  psmisc \
  publicsuffix \
  pulseaudio-module-bluetooth \
  pulseaudio-utils \
  pulseaudio \
  python-apt-common \
  python3-apport \
  python3-apt \
  python3-aptdaemon.gtk3widgets \
  python3-aptdaemon \
  python3-bcrypt \
  python3-blinker \
  python3-brlapi \
  python3-bs4 \
  python3-cairo \
  python3-certifi \
  python3-cffi-backend \
  python3-chardet \
  python3-click \
  python3-colorama \
  python3-commandnotfound \
  python3-configobj \
  python3-cryptography \
  python3-cups \
  python3-cupshelpers \
  python3-dateutil \
  python3-dbus \
  python3-debconf \
  python3-debian \
  python3-defer \
  python3-dev \
  python3-distro-info \
  python3-distro \
  python3-distupgrade \
  python3-distutils \
  python3-fasteners \
  python3-future \
  python3-gdbm \
  python3-gi-cairo \
  python3-gi \
  python3-gpg \
  python3-greenlet \
  python3-html5lib \
  python3-httplib2 \
  python3-ibus-1.0 \
  python3-idna \
  python3-importlib-metadata \
  python3-jeepney \
  python3-jwt \
  python3-keyring \
  python3-launchpadlib \
  python3-lazr.restfulclient \
  python3-lazr.uri \
  python3-ldb \
  python3-levenshtein \
  python3-lib2to3 \
  python3-libvirt \
  python3-libxml2 \
  python3-lldb-14 \
  python3-lockfile \
  python3-louis \
  python3-lxml \
  python3-macaroonbakery \
  python3-mako \
  python3-markdown \
  python3-markupsafe \
  python3-minimal \
  python3-monotonic \
  python3-more-itertools \
  python3-msgpack \
  python3-nacl \
  python3-neovim \
  python3-netifaces \
  python3-oauthlib \
  python3-olefile \
  python3-paramiko \
  python3-pexpect \
  python3-pil \
  python3-pip-whl \
  python3-pip \
  python3-pkg-resources \
  python3-problem-report \
  python3-protobuf \
  python3-ptyprocess \
  python3-pyatspi \
  python3-pygments \
  python3-pyinotify \
  python3-pymacaroons \
  python3-pynvim \
  python3-pyparsing \
  python3-renderpm \
  python3-reportlab-accel \
  python3-reportlab \
  python3-requests \
  python3-rfc3339 \
  python3-samba \
  python3-secretstorage \
  python3-setuptools-whl \
  python3-setuptools \
  python3-six \
  python3-software-properties \
  python3-soupsieve \
  python3-speechd \
  python3-systemd \
  python3-talloc \
  python3-tdb \
  python3-tk \
  python3-tz \
  python3-uno \
  python3-update-manager \
  python3-urllib3 \
  python3-venv \
  python3-wadllib \
  python3-webencodings \
  python3-websocket \
  python3-wheel \
  python3-xdg \
  python3-xkit \
  python3-yaml \
  python3-zipp \
  python3.10-dev \
  python3.10-minimal \
  python3.10-venv \
  python3.10 \
  python3 \
  qemu-block-extra \
  qemu-system-common \
  qemu-system-data \
  qemu-system-gui \
  qemu-system-x86 \
  qemu-utils \
  qt5-gtk-platformtheme \
  qttranslations5-l10n \
  rake \
  readline-common \
  remmina-common \
  remmina-plugin-rdp \
  remmina-plugin-secret \
  remmina-plugin-vnc \
  remmina \
  rfkill \
  rhythmbox-data \
  rhythmbox-plugin-alternative-toolbar \
  rhythmbox-plugins \
  rhythmbox \
  rpcsvc-proto \
  rsync \
  rsyslog \
  rtkit \
  ruby-net-telnet \
  ruby-rubygems \
  ruby-webrick \
  ruby-xmlrpc \
  ruby3.0 \
  ruby \
  rubygems-integration \
  rygel \
  samba-common-bin \
  samba-common \
  samba-dsdb-modules \
  samba-libs \
  sane-airscan \
  sane-utils \
  sbsigntool \
  screen-resolution-extra \
  seabios \
  seahorse \
  secureboot-db \
  sed \
  sensible-utils \
  session-migration \
  sgml-base \
  sgml-data \
  shared-mime-info \
  shim-signed \
  shotwell-common \
  shotwell \
  shutter \
  simple-scan \
  skypeforlinux \
  slack-desktop \
  slirp4netns \
  snapd \
  software-properties-common \
  software-properties-gtk \
  sound-icons \
  sound-theme-freedesktop \
  speech-dispatcher-audio-plugins \
  speech-dispatcher-espeak-ng \
  speech-dispatcher \
  spice-client-glib-usb-acl-helper \
  spice-vdagent \
  sqlitebrowser \
  squashfs-tools \
  ssh-import-id \
  ssl-cert \
  strace \
  stress \
  strongswan-charon \
  strongswan-libcharon \
  strongswan-starter \
  strongswan \
  sublime-text \
  sudo \
  switcheroo-control \
  swtpm-tools \
  swtpm \
  system-config-printer-common \
  system-config-printer-udev \
  system-config-printer \
  systemd-container \
  systemd-hwe-hwdb \
  systemd-oomd \
  systemd-sysv \
  systemd-timesyncd \
  systemd \
  sysvinit-utils \
  tar \
  tcl8.6 \
  tcl \
  tcpdump \
  telnet \
  thermald \
  thin-provisioning-tools \
  thunderbird-gnome-support \
  thunderbird-locale-en-us \
  thunderbird-locale-en \
  thunderbird-locale-ja \
  thunderbird \
  time \
  tk8.6-blt2.5 \
  tnftp \
  totem-common \
  totem-plugins \
  totem \
  tpm-udev \
  tracker-extract \
  tracker-miner-fs \
  tracker \
  transmission-common \
  transmission-gtk \
  tree \
  ttf-mscorefonts-installer \
  tzdata \
  ubuntu-advantage-desktop-daemon \
  ubuntu-advantage-tools \
  ubuntu-defaults-ja \
  ubuntu-desktop-minimal \
  ubuntu-desktop \
  ubuntu-docs \
  ubuntu-drivers-common \
  ubuntu-keyring \
  ubuntu-minimal \
  ubuntu-mono \
  ubuntu-release-upgrader-core \
  ubuntu-release-upgrader-gtk \
  ubuntu-report \
  ubuntu-restricted-addons \
  ubuntu-restricted-extras \
  ubuntu-session \
  ubuntu-settings \
  ubuntu-standard \
  ubuntu-wallpapers \
  ubuntu-wallpapers \
  ucf \
  udev \
  udisks2 \
  ufw \
  ulauncher \
  unattended-upgrades \
  uno-libs-private \
  unrar \
  unzip \
  update-inetd \
  update-manager-core \
  update-manager \
  update-notifier-common \
  update-notifier \
  upower \
  ure \
  usb-creator-common \
  usb-creator-gtk \
  usb-modeswitch-data \
  usb-modeswitch \
  usb.ids \
  usbmuxd \
  usbutils \
  usrmerge \
  util-linux \
  uuid-dev \
  uuid-runtime \
  va-driver-all \
  variety \
  vdpau-driver-all \
  vifm \
  vim-addon-manager \
  vim-common \
  vim-runtime \
  vim-tiny \
  vim \
  virt-manager \
  virt-viewer \
  virtinst \
  vortex-core \
  wamerican \
  wayland-protocols \
  wbritish \
  wezterm \
  wget \
  whiptail \
  whoopsie-preferences \
  whoopsie \
  winbind \
  wine-stable-amd64 \
  wine-stable-i386 \
  wine-stable \
  winehq-stable \
  winetricks \
  wireless-regdb \
  wireless-tools \
  wmctrl \
  wpasupplicant \
  x11-apps \
  x11-common \
  x11-session-utils \
  x11-utils \
  x11-xkb-utils \
  x11-xserver-utils \
  x11proto-dev \
  xauth \
  xbitmaps \
  xbrlapi \
  xclip \
  xcursor-themes \
  xcvt \
  xdg-dbus-proxy \
  xdg-desktop-portal-gnome \
  xdg-desktop-portal-gtk \
  xdg-desktop-portal \
  xdg-user-dirs-gtk \
  xdg-user-dirs \
  xdg-utils \
  xfonts-base \
  xfonts-encodings \
  xfonts-scalable \
  xfonts-utils \
  xinit \
  xinput \
  xkb-data \
  xl2tpd \
  xml-core \
  xorg-docs-core \
  xorg-sgml-doctools \
  xorg \
  xorriso \
  xsel \
  xserver-common \
  xserver-xephyr \
  xserver-xorg-core \
  xserver-xorg-input-all \
  xserver-xorg-input-libinput \
  xserver-xorg-input-wacom \
  xserver-xorg-legacy \
  xserver-xorg-video-all \
  xserver-xorg-video-amdgpu \
  xserver-xorg-video-ati \
  xserver-xorg-video-fbdev \
  xserver-xorg-video-intel \
  xserver-xorg-video-nouveau \
  xserver-xorg-video-nvidia-515 \
  xserver-xorg-video-qxl \
  xserver-xorg-video-radeon \
  xserver-xorg-video-vesa \
  xserver-xorg-video-vmware \
  xserver-xorg \
  xsltproc \
  xtrans-dev \
  xwayland \
  xxd \
  xz-utils \
  yaru-theme-gnome-shell \
  yaru-theme-gtk \
  yaru-theme-icon \
  yaru-theme-sound \
  yelp-xsl \
  yelp \
  zenity-common \
  zenity \
  zip \
  zlib1g-dev \
  zlib1g \
  zlib1g \
  zoom \
  zsh-common \
  zsh \
  zstd

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
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/wezterm-gui
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
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
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

# 日本語指定で一度起動する
code --locale=ja

# 一時停止
sleep 5s

# 終了する
ps aux | grep /usr/share/code/code | grep -v grep | awk '{ print \"kill -9\", $2 }' | sh

# TODO: Set wallpaper
# TODO: Set dock items

# ------------------------------------------------------------------------------
#  Reboot
# ------------------------------------------------------------------------------
sudo reboot

# ------------------------------------------------------------------------------
# EOF
