source ~/.zsh.d/conf/.zshrc_path
source ~/.zsh.d/conf/.zshrc_alias
source ~/.zsh.d/conf/.zshrc_zsh
source ~/.zsh.d/conf/.zshrc_tmux
source ~/.zsh.d/conf/.zshrc_plugins


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

source ~/.zsh.d/conf/.zshrc_git

# http://qiita.com/Linda_pp/items/cb047fb1fe279f9d0b22
source ~/.zsh.d/zsh-bundle-exec/zsh-bundle-exec.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
