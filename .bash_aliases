### Aliases:
alias bz='booz'
alias bzc='clear; booz'
alias mc='vi $_home/scripts-in-use/td/must-can'

alias kc='kubectl'
alias dk='docker'
alias pd='kc get po,deploy'
# ^^^ newly added, on testing...

alias virsh='sudo virsh'
alias virt-manager='sudo virt-manager'
alias vi.aliases='vi ~/.bash_aliases'
alias sha='sha1sum'
# Usage: use y for overwrite and n for not do it.
alias mv='mv -i'
alias cp='cp -i'
# This allows me know whenever I am accidentally overwriting any existing file, so it'll prompt me before actually doing that. Yo! ~ Missing semester!
alias visudo='sudo EDITOR=nvim visudo'
# FYI: Use exa instead of l and ls.
alias tree='tree -I node_modules'
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
alias ca='cargo'
# alias r='ranger'
# coz i need to use r for r language now.
alias sus='systemctl suspend'
alias hib='systemctl hibernate'
alias md='mkdir'
alias rd='rmdir'
alias wifi='nmtui'
alias lsmnt='ls /mnt/*'
alias rmrf='rm -rf'
alias ..='cd ..'
alias up='cd ..'
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
alias v='nvim'
alias vi='nvim'
# Load nvim with on config: Source: https://vi.stackexchange.com/a/16981
alias vifresh='vim --clean'
# Since vi is aliased, all below will refer to nvim for vi.
alias visahil='vi -u nvim-sahil/init.vim' #Loading nvim-sahil folder as config folder for testing my original configs.
alias vi.bashrc='vi $_home/.bashrc'
alias vi.functions='vi $_home/.bash_functions'
alias vi.gitconfig='vi $_home/.gitconfig'
alias vi.profile='vi $_home/.profile'
alias vi.nvim='vi $_home/nvim/init.vim'
alias vi.fstab='sudo vi /etc/fstab'
alias vi.pomodoro='vi $_home/scripts-in-use/pomodoro/pomodoro.sh'
alias vi.i3old='vi /mnt/sda3/home/array/.config/i3/config'
alias vi.i3='vi $_home/.config/i3/config'
alias vi.cleanAllSwap='rm ~/.local/share/nvim/swap/*' 
alias vi.qm='vi ~/.config/qutebrowser/quickmarks'
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
alias o='xdg-open'
alias tx='tmux'
alias tmuxsource='tmux source-file ~/.tmux.conf'
alias tmuxkill='pkill tmux' # Use -f to force kill though. Src: https://askubuntu.com/a/868187/702911
# official way of killing tmux: https://www.codegrepper.com/code-examples/shell/kill+all+tmux+sessions
alias vi.nvim='vi ~/nvim/init.vim'
alias cl='clear && l'
alias restartadb='sudo adb kill-server; sudo adb start-server'
alias listInstalledPacmanPackages='pacman -Q'
alias kernelname='uname -r'
alias generatesshkeypair='ssh-keygen'
alias nf='neofetch'
# Below aliases helps in searching current directory. -a means to include hidden files as well.
alias lsg='ls -a | grep -i'
alias c='clear'
alias C='clear'
if [[ $TMUX ]]; then
	# ^^^^^^ Source: https://stackoverflow.com/a/70177699/10012446
	alias c='clear; tmux clear-history'
	alias C='clear; tmux clear-history'
	alias clear='clear; tmux clear-history'
	# alias clear='clear && tmux clear-history'
fi
