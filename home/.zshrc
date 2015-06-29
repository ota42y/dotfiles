source ~/.zsh.d/conf/.zshrc_path
source ~/.zsh.d/conf/.zshrc_alias
source ~/.zsh.d/conf/.zshrc_zsh
source ~/.zsh.d/conf/.zshrc_tmux

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
