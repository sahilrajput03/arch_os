#
# ~/.bashrc, `realpath .bashrc` ouputs `/home/array/.bashrc`.
#sahil: `rc` as suffix of .bashrc file name means `run commands`.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# I have sourced this file in root shell's .bashrc file as well i.e., `/root/.bashrc` ~Sahil. And that file is invoked when we login to root user i.e., `su`. It'll load all your aliases and functions in root shell as well that you enjoy in your non-root shells.

### Variables
alias visudo='sudo EDITOR=nvim visudo'
# Original from archos.
# export PS1='[\u@\h \W]\$ ' 
# ~Sahil: For colouring the username and hostname in cli: Source: https://askubuntu.com/a/123306/702911 (simply direct copy paste)
# BACKUP # export PS1='\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
ps1_format='\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
export PS1=$ps1_format
_home=/home/array # Did coz I'll source this file in sudo as well.
export PATH=$PATH:~/.local/bin
export EDITOR=/usr/bin/nvim
export HISTSIZE=5000000 	# Increasing the history saving capacity to 50 lakhs.
export HISTFILESIZE=5000000	# Increasing the history saving capacity to 50 lakhs. Source: https://www.redhat.com/sysadmin/history-command
export HISTIGNORE="clear:bg:fg:cd:cd -:cd ..:exit:date:w:* --help:ls:l:ll:lll:history:c"
#^^^^^^ Src: https://github.com/jonhoo/configs/blob/master/shell/.bashrc
#force_color_prompt=yes
# XDG_CONFIG_HOME This is to make neovim take the nvim directory path as mentined @ https://wiki.archlinux.org/title/Neovim
export XDG_CONFIG_HOME='/home/array'
#export XDG_CONFIG_HOME='~' #BEWARE: This causes blunder.

# Function to show/hide folder paths in terminal:
function hidepath_in_terminal(){
	# source: https://askubuntu.com/a/1158624/702911
	export PS1='$ '
}
function showpath_in_terminal(){
	export PS1=$ps1_format
}

### Aliases:
# FYI: Use exa instead of l and ls.
alias explorer='pcmanfm'
alias fm='pcmanfm'


alias paste_from_clipboard='xsel'
alias paste_png_image='xclip -selection clipboard -t image/png -o > "image-$(date +%c).png"'
# Source: https://unix.stackexchange.com/a/145134/504112
alias open-pdf='llpp'
alias g='git'
alias l='exa -lh' # ^^ -h is for showing column headers in the long listing format. Source: https://stackoverflow.com/a/46471147/10012446
alias ls='exa --color=auto'
alias inw='inotifywait'
alias dc='docker-compose'
alias e='exit'
# alias q='exit' # This isn't any good IMO ~Sahil
alias c='clear; tmux clear-history'
alias C='clear; tmux clear-history'
alias clear='clear; tmux clear-history'
alias ca='cargo'
alias r='ranger'
alias sus='systemctl suspend'
alias hib='systemctl hibernate'
alias md='mkdir'
alias rd='rmdir'
alias wifi='nmtui'
alias lsmnt='ls /mnt/*'
alias rmrf='rm -rf'
alias ..='cd ..'
alias ...='source $_home/.bashrc'
alias ...c='source $_home/.bashrc; clear'
alias gr='cd $_home/Documents/github_repos'
alias grpg='cd $_home/Documents/github_repos/docker-pgadmin4'
alias grc='cd $_home/Documents/github_repos/config'
alias grr='cd $_home/Documents/github_repos/learning_rust/programming-rust-by-example'
alias ~='cd ~'
alias mb='cd /mnt/sda3/home/array/my_bin'
alias cdreact-fetch2='cd /mnt/sda5/githubrepos/npmjs_packages/react-fetch2'
alias resume='cd /mnt/sda3/home/array/my_bin/resume'
alias vi='nvim'
# Since vi is aliased, all below will refer to nvim for vi.
alias visahil='vi -u nvim-sahil/init.vim' #Loading nvim-sahil folder as config folder for testing my original configs.
alias vi.bashrc='vi $_home/.bashrc'
alias vi.functions='vi $_home/functions_bash_sahil.sh'
alias vi.gitconfig='vi $_home/.gitconfig'
alias vi.profile='vi $_home/.profile'
alias vi.nvim='vi $_home/nvim/init.vim'
alias vi.fstab='sudo vi /etc/fstab'
alias vi.pomodoro='vi $_home/scripts-in-use/pomodoro/pomodoro.sh'
alias vi.i3old='vi /mnt/sda3/home/array/.config/i3/config'
alias vi.i3='vi $_home/.config/i3/config'
alias vi.cleanAllSwap='rm ~/.local/share/nvim/swap/*' 
alias mountPortableDrive='sudo mount /dev/sdc2 /mnt/sdc2'
alias umountPortableDrive='sudo umount /dev/sdc2'
alias rxmodmap='setxkbmap -layout us' #src: https://askubuntu.com/a/29609
alias cw='cargo watch -q -c -x "run -q"'
alias cwn='cargo watch -c -x run'
alias ct='cargo watch -c -x test'
#cargo watch --quiet --clear --exec 'run --quiet'
alias co='code .'
alias s='npm start'
alias nr='npm run'
alias myip='ip address show'
alias nm='nodemon'
# nma: This is useful when you want to use debugger (i.e., runtime code control with vscode).
alias nma='nodemon --inspect'
# nmas: This is useful when you want to use debugger from the very first line of execution (i.e., runtime code control with vscode).
alias nmas='nodemon --inspect-brk'
alias nrd='npm run dev'
alias pomodoro='/home/array/scripts-in-use/pomodoro/pomodoro.sh'
alias xrandr.default='xrandr -s 0'
alias jn='jupyter notebook'
alias d='npm run dev'
alias bp='paplay ~/scripts-in-use/beep-sound-8333.wav'
alias open='xdg-open'
alias tmuxsource='tmux source-file ~/.tmux.conf'
alias tmuxkill='pkill tmux' # Use -f to force kill though. Src: https://askubuntu.com/a/868187/702911
# official way of killing tmux: https://www.codegrepper.com/code-examples/shell/kill+all+tmux+sessions
alias vinvim='vi ~/nvim/init.vim'
alias cl='clear && l'
alias restartadb='sudo adb kill-server; sudo adb start-server'
alias listInstalledPacmanPackages='pacman -Q'
alias kernelname='uname -r'
alias generatesshkeypair='ssh-keygen'
alias nf='neofetch'



### Sources:
. $_home/functions_bash_sahil.sh
. "$_home/.cargo/env" # From cargo docs: . "$HOME/.cargo/env" 
. /usr/share/nvm/init-nvm.sh
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh #Making autojump work!

function show_custom_info() {
	echo "SYSTEM		: $(uname -a)"
	echo "HOSTNAME	: $HOSTNAME"
	echo "UPTIME		: $(uptime)"
	echo "DISK		: $(df /home/array | tail -1)"
	echo "HOSTNAMECTL	:"
	hostnamectl
	echo
}
# show_custom_info
# I am using neofetch to display general os info now:
# neofetch

# Running tmux as default shell: Source: https://unix.stackexchange.com/a/113768/504112
function enableTmux() {
  if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  	  exec tmux
  	  # Config file @ ~/.tmux.conf
  fi
}
enableTmux

# Enable tmux based clear screen with ctrl+l in shell: (This is free from non-tmux errors too).
# Source: https://unix.stackexchange.com/a/29239/504112
bind -x '"\C-l": clear; tmux clear-history'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
