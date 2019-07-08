source ~/.zsh.d/lazyenv.bash
source ~/.zsh.d/conf/.zshrc_path
source ~/.zsh.d/conf/.zshrc_alias
source ~/.zsh.d/conf/.zshrc_zsh
source ~/.zsh.d/conf/.zshrc_tmux
source ~/.zsh.d/conf/.zshrc_plugins
source ~/.zsh.d/conf/.zshrc_git


# cdr, add-zsh-hook を有効にする
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

source ~/.zsh.d/conf/.zshrc_peco

source ~/.zshrc_local

if [ `uname` = "Darwin" ]; then
	source ~/.zsh.d/conf/.zshrc_mac
elif [ `uname` = "Linux" ]; then
	~/.zsh.d/conf/.zshrc_linux
fi

autoload -U compinit
compinit -u
