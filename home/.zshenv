# macvim not load .zshrc...
#zmodload zsh/zprof && zprof
source ~/.zshrc
if (which zprof > /dev/null 2>&1) ;then
  zprof
fi
