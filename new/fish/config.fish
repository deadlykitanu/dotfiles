set fish_greeting

# colours
set fish_color_normal '#458588'
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command '#458588'
set fish_color_error '#ff6c6b'
set fish_color_param '#8ec07c'

# pacman and yay
alias s='sudo pacman -S'
alias sy='sudo pacman -Sy'
alias syyu='sudo pacman -Syyu'
alias yaysyu='yay -Syu --noconfirm'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

# colorize grep output (good for log files)
alias grep='grep --color=auto'

# text editor
alias v='nvim'
alias n='nano'

# ryzen controller
alias r='sudo /opt/Ryzen\ Controller/ryzen-controller --no-sandbox'
