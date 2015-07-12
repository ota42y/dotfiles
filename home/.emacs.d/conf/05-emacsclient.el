;; run server
(require 'server)
(unless (server-running-p)
(server-start))

(global-set-key (kbd "C-x C-c") 'ns-do-hide-emacs) ;emacs休止
(defalias 'exit 'save-buffers-kill-emacs) ;M-x exit で emacs終了
