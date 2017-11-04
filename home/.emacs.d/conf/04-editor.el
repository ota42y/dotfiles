; shift+カーソルキーでリージョン選択
(delete-selection-mode 1)

; リージョンをハイライト
(setq transient-mark-mode t)

;; タブキー
;; タブ幅を４に設定
(setq-default c-basic-offset 4     ;;基本インデント量4
              tab-width 4          ;;タブ幅4
              indent-tabs-mode nil)  ;;インデントをタブでするかスペースでするか

; 対応括弧をハイライト表示
(show-paren-mode t)
(setq show-paren-style 'mixed)
(set-face-background 'show-paren-match-face "plum2")
(set-face-foreground 'show-paren-match-face "Blue")


; タブ、全角空白等を色を付ける
(defface my-face-b-1 '((t (:background "gray"))) nil)
(defface my-face-b-2 '((t (:background "gray26"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-b-2 append)
     ("　" 0 my-face-b-1 append)
     ("[ \t]+$" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

; 現在の行にアンダーラインを引く
(global-hl-line-mode)
(setq hl-line-face 'underline)

; 半透明化
;(modify-all-frames-parameters
; (list (cons 'alpha  '(80 60 50 60)))) ; 前から順に通常のフレーム，アクティブ でないフレーム，移動中のフレーム，サイズ変更中のフレームの透明度

; ツールバーを非表示
(tool-bar-mode -1) ; M-x tool-bar-mode で表示非表示を切り替えられる

; 最近開いたファイルを記録
(recentf-mode 1)
