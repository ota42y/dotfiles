source ~/.zsh.d/conf/.zshrc_path
source ~/.zsh.d/conf/.zshrc_alias

source ~/.zshrc_local

# http://qiita.com/yaotti/items/157ff0a46736ec793a91
setopt AUTO_CD

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit
compinit -u

# history
# http://0xcc.net/unimag/3/
HISTFILE=$HOME/.zsh-history           # 履歴をファイルに保存する
HISTSIZE=100000                       # メモリ内の履歴の数
SAVEHIST=100000                       # 保存される履歴の数
setopt extended_history               # 履歴ファイルに時刻を記録
function history-all { history -E 1 } # 全履歴の一覧を出力する

PROMPT='@%m:%(5~,%-2~/.../%2~,%~)%# '

fpath=(/usr/local/share/zsh-completions $fpath)

# vcs_info 設定

RPROMPT=""

autoload -Uz vcs_info
autoload -Uz add-zsh-hook
autoload -Uz is-at-least
autoload -Uz colors

# 以下の3つのメッセージをエクスポートする
#   $vcs_info_msg_0_ : 通常メッセージ用 (緑)
#   $vcs_info_msg_1_ : 警告メッセージ用 (黄色)
#   $vcs_info_msg_2_ : エラーメッセージ用 (赤)
zstyle ':vcs_info:*' max-exports 3

zstyle ':vcs_info:*' enable git svn hg bzr
# 標準のフォーマット(git 以外で使用)
# misc(%m) は通常は空文字列に置き換えられる
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b]' '%m' '<!%a>'
zstyle ':vcs_info:(svn|bzr):*' branchformat '%b:r%r'
zstyle ':vcs_info:bzr:*' use-simple true

source ~/.zsh.d/conf/.zshrc_git

# hub用
# brew install hub

function git(){hub "$@"} # zsh

# git contrib
export PATH=/usr/local/share/git-core/contrib/:$PATH
# git-new-workdir
export PATH=/usr/local/share/git-core/contrib/workdir/:$PATH

# http://qiita.com/Linda_pp/items/cb047fb1fe279f9d0b22
source ~/.zsh.d/zsh-bundle-exec/zsh-bundle-exec.zsh
