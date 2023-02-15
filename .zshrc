# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

####   ARCOLINUX SETTINGS   ####

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# Make VSCodium the default editor
export EDITOR='vscodium'

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

###############
### ALIASES ###
###############

#########
# Edits #
#########
alias edit-p10k="p10k configure"
alias edit-lxdm="$EDITOR /etc/lxdm/lxdm.conf"
alias edit-lightdm="$EDITOR /etc/lightdm/lightdm.conf"
alias edit-pacman="$EDITOR /etc/pacman.conf"
alias edit-grub="$EDITOR /etc/default/grub"
alias edit-confgrub="$EDITOR /boot/grub/grub.cfg"
alias edit-mkinitcpio="$EDITOR /etc/mkinitcpio.conf"
alias edit-mirrorlist="$EDITOR /etc/pacman.d/mirrorlist"
alias edit-arcomirrorlist="$EDITOR /etc/pacman.d/arcolinux-mirrorlist"
alias edit-sddm="$EDITOR /etc/sddm.conf"
alias edit-sddmk="$EDITOR /etc/sddm.conf.d/kde_settings.conf"
alias edit-fstab="$EDITOR /etc/fstab"
alias edit-nsswitch="$EDITOR /etc/nsswitch.conf"
alias edit-samba="$EDITOR /etc/samba/smb.conf"
alias edit-gnupgconf="sudo $EDITOR /etc/pacman.d/gnupg/gpg.conf"
alias edit-hosts="sudo $EDITOR /etc/hosts"
alias edit-hostname="sudo $EDITOR /etc/hostname"
alias edit-bash="$EDITOR ~/.bashrc"
alias edit-zsh="$EDITOR ~/.zshrc"
alias edit-fish="$EDITOR ~/.config/fish/config.fish"
alias edit-neofetch="$EDITOR ~/.config/neofetch/config.conf"
alias edit-libvirtd="$EDITOR /etc/libvirt/libvirtd.conf"

###########
# Updates #
###########
#update betterlockscreen images
alias update-bls="betterlockscreen -u /usr/share/backgrounds/arcolinux/"
alias reload-zsh="source ~/.zshrc"
#add new fonts
alias reload-fc='sudo fc-cache -fv'
alias update-mkinitcpio="sudo mkinitcpio -P"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update-pacman="sudo pacman -Syu"
alias update-aur="yay -Syu --aur"
alias update-brew="brew update"
alias update-nix="nix-env -u"
alias update-pipx="pipx upgrade"
alias update-paru="paru -Syu --noconfirm"
function_updateall() {
  echo 'All Updates Starting' | lolcat -S 0
  echo 'Pacman Update Started' | lolcat -S 0
  sudo pacman -Syu
  echo 'Pacman Update Complete' | lolcat -S 0
  echo 'AUR Update Started' | lolcat -S 0
  yay -Syu --aur
  echo 'AUR Update Complete' | lolcat -S 0
  echo 'Brew Update Started' | lolcat -S 0
  brew update
  brew upgrade
  echo 'Brew Update Complete' | lolcat -S 0 
  echo 'Nix Update Started' | lolcat -S 0
  nix-env -u
  echo 'Nix Update Complete' | lolcat -S 0
  echo 'Pipx Update Started' | lolcat -S 0
  pipx upgrade-all
  echo 'Pipx Update Complete' | lolcat -S 0 
  echo 'All Updates Finished!' | lolcat -S 0 
  echo 'Have a nice day!' | lolcat -S 0
}
#alias update-all="function_updateall"
alias update-all="topgrade"

#########
# Fixes #
#########
alias fix-perms="sudo chown -R $USER:$USER ~/.config ~/.local"
alias fix-keys="/usr/local/bin/arcolinux-fix-pacman-databases-and-keys"
#fix-sddm-config is no longer an alias but an application - part of ATT
#alias fix-sddm-config="/usr/local/bin/arcolinux-fix-sddm-config"
alias fix-pacman-conf="/usr/local/bin/arcolinux-fix-pacman-conf"
alias fix-pacman-keyserver="/usr/local/bin/arcolinux-fix-pacman-gpg-conf"
alias fix-qwerty="sudo localectl set-x11-keymap us"
alias fix-locale="sudo localectl set-locale LANG=en_US.UTF-8"
alias fix-pacman-unlock="sudo rm /var/lib/pacman/db.lck"
#grub issue 08/2022
alias fix-grub-efi="sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi"
alias fix-keyserver="[ -d ~/.gnupg ] || mkdir ~/.gnupg ; cp /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/ ; echo 'done'"
alias fix-gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias fix-gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias fix-docker="~/scripts/fixdocker.sh"

###########
# Removes #
###########
alias rm-pacmanlock="sudo rm /var/lib/pacman/db.lck"
#arcolinux logout unlock
alias rm-logoutlock="sudo rm /tmp/arcologout.lock"
alias rm-gitcache="rm -r ~/.cache/git"

################
# Pacman Tools #
################
#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
# show the list of packages that need this package - depends mpv as example
function_depends()  {
    search=$(echo "$1")
    sudo pacman -Sii $search | grep "Required" | sed -e "s/Required By     : //g" | sed -e "s/  /\n/g"
    }
alias depends='function_depends'

##########
# Github #
##########
function_gitzsh() {
  cp ~/.zshrc ~/github/DOTS/
  cd ~/github/DOTS/
  git add .zshrc
  git commit -m 'edit zshrc'
  git push
}
alias git-zsh="function_gitzsh"

########
# list #
########
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

########
# grep #
########
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

########
# Bats #
########
#reading logs with bat
alias bat-calamares="bat /var/log/Calamares.log"
alias bat-pacman="bat /var/log/pacman.log"
alias bat-xorg="bat /var/log/Xorg.0.log"
alias bat-xorgo="bat /var/log/Xorg.0.log.old"

############
# Utilitys #
############
alias which-x11="ls /usr/share/xsessions"
alias which-wayland="ls /usr/share/wayland-sessions"
alias which-vga="/usr/local/bin/arcolinux-which-vga"
alias which-audio="pactl info | grep 'Server Name'"
alias hw="hwinfo --short"
#check vulnerabilities microcode
alias check-microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'
#enabling vmware services
alias start-vmware="sudo systemctl enable --now vmtoolsd.service"
#iso and version used to install ArcoLinux
alias which-iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"
alias which-isoo="cat /etc/dev-rel"
#Cleanup orphaned packages
alias cleanup-pacman='sudo pacman -Rns $(pacman -Qtdq)'
#clear
alias clean="clear; seq 1 $(tput cols) | sort -R | sparklines | lolcat"
alias big="expac -H M '%m\t%n' | sort -h | nl"
alias downgrada="sudo downgrade --ala-url https://ant.seedhost.eu/arcolinux/"
#systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"
#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
#search content with ripgrep
alias rg="rg --sort path"
#readable output
alias df='df -h'
#free
alias free="free -mt"
#continue download
alias wget="wget -c"
#userlist
alias userlist="cut -d: -f1 /etc/passwd | sort"
#merge new settings
alias merge="xrdb -merge ~/.Xresources"
#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"



###############
# Switch-To's #
###############
# Switch between Desktop Managers
alias switch-to-lightdm="sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed ; sudo systemctl enable lightdm.service -f ; echo 'Lightm is active - reboot now'"
alias switch-to-sddm="sudo pacman -S sddm --noconfirm --needed ; sudo systemctl enable sddm.service -f ; echo 'Sddm is active - reboot now'"
alias switch-to-ly="sudo pacman -S ly --noconfirm --needed ; sudo systemctl enable ly.service -f ; echo 'Ly is active - reboot now'"
alias switch-to-gdm="sudo pacman -S gdm --noconfirm --needed ; sudo systemctl enable gdm.service -f ; echo 'Gdm is active - reboot now'"
alias switch-to-lxdm="sudo pacman -S lxdm --noconfirm --needed ; sudo systemctl enable lxdm.service -f ; echo 'Lxdm is active - reboot now'"
# Switch between Shells
alias switch-to-bash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias switch-to-zsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias switch-to-fish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

###########
# Mirrors #
###########
#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirror-delay="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirror-score="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirror-age="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"
#our experimental - best option for the moment
alias mirror-x="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirror-xx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirror-rate='rate-mirrors --allow-root --disable-comments arch | sudo tee /etc/pacman.d/mirrorlist'
alias mirror-rate-https='rate-mirrors --allow-root --disable-comments --protocol https arch  | sudo tee /etc/pacman.d/mirrorlist'

#######
# GPG #
#######
#verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
#receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

###############
# Quick Kills #
###############
alias qk-conkey='killall conky'
alias qk-polybar='killall polybar'
alias qk-picom='killall picom'


##########################
# Arcolinux Applications #
##########################
#att is a symbolic link now
#alias att="archlinux-tweak-tool"
alias adt="arcolinux-desktop-trasher"
alias abl="arcolinux-betterlockscreen"
alias agm="arcolinux-get-mirrors"
alias amr="arcolinux-mirrorlist-rank-info"
alias aom="arcolinux-osbeck-as-mirror"
alias ars="arcolinux-reflector-simple"
alias atm="arcolinux-tellme"
alias avs="arcolinux-vbox-share"
alias awa="arcolinux-welcome-app"

###########
# Adblock #
###########
alias enable-adblock="hblock"
alias disable-adblock="hblock -S none -D none"

#########
# Tools #
#########
function_extract()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias extract="function_extract"

########
# Skel #
########
#copy/paste all content of /etc/skel over to home folder - backup of config created - beware
#skel alias has been replaced with a script at /usr/local/bin/skel
#backup contents of /etc/skel to hidden backup folder in home/user
alias bak-skel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'
#alias cp-skel-bash'cp /etc/skel/.bashrc ~/.bashrc && echo "Copied."'
#alias cp-skel-zsh='cp /etc/skel/.zshrc ~/.zshrc && exec zsh'
#alias cpskel-fish='cp /etc/skel/.config/fish/config.fish ~/.config/fish/config.fish && echo "Copied."'
#create a file called .zshrc-personal and put all your personal aliases
#in there. They will not be overwritten by skel.

[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

# reporting tools - install when not installed
#neofetch | lolcat