#source ~/.zsh.d/lazyenv.bash

export PATH=$HOME/.local/bin/:$PATH

source ~/.zshrc_local
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


if [ `uname` = "Darwin" ]; then
	source ~/.zsh.d/conf/.zshrc_mac
elif [ `uname` = "Linux" ]; then
	source ~/.zsh.d/conf/.zshrc_linux
fi

autoload -U compinit
compinit -u

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ota42y/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ota42y/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ota42y/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ota42y/google-cloud-sdk/completion.zsh.inc'; fi
