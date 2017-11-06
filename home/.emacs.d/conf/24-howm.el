(defvar datetime-format "%Y-%m-%d %H:%M")
;; 言語
(setq howm-menu-lang 'ja)
;; ファイルパス
(setq howm-keyword-file "~/howm/conf/.howm-keys")
(setq howm-history-file "~/howm/conf/.howm-history")
(setq howm-menu-file "~/howm/conf/0000-00-00-000000.txt")

;; 「http://」でリターン押したら, URL を kill-ring へ
(setq action-lock-no-browser t)

;; キーバインド
(global-set-key "\C-c,," 'howm-menu)
;; 書式
(defvar howm-view-title-header "#")
(setq howm-template-date-format
      (concat "[" datetime-format "]"))
;; 検索
(setq howm-keyword-case-fold-search t)
;; load
(autoload 'howm-menu "howm" "Hitori Otegaru Wiki Modoki" t)
;; disable auto-fill-mode
(add-hook 'howm-mode-hook '(lambda () (auto-fill-mode -1)))

(setq howm-file-name-format "%Y/%m/%Y-%m-%d-%H%M%S.md")
;; markdown-mode でメモる
(setq howm-template "# %title%cursor\n%date\n")

