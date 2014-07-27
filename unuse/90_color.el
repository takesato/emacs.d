;; coloring

(setq frame-background-mode 'dark)
;; (list-faces-display)
(set-foreground-color                                  "#efe") ; 文字色
(set-background-color                                  "#000000") ; 背景色
(set-cursor-color                                      "gold")
;(set-cursor-color                                      "#ccc") ; カーソル色
(set-face-foreground 'font-lock-constant-face          "#FFBF7F") ; 定数 (this, self なども)
(set-face-foreground 'font-lock-comment-delimiter-face "#999") ; コメントデリミタ
(set-face-foreground 'font-lock-comment-face           "#999") ; コメント
(set-face-foreground 'font-lock-keyword-face           "#FF7F7F") ; キーワード
(set-face-foreground 'font-lock-function-name-face     "#BF7FFF") ; 関数名
(set-face-foreground 'font-lock-type-face              "#FFFF7F") ; クラス
(set-face-foreground 'font-lock-string-face            "#7FFF7F") ; 文字列
(set-face-foreground 'font-lock-variable-name-face     "#7F7FFF") ; 変数
(set-face-foreground 'fringe                           "#666666") ; fringe (折り返し記号などが出る部分)
(set-face-foreground 'mode-line-inactive               "#333333") ; モードライン文字 (非アクティブ)
(set-face-foreground 'modeline                         "#CCCCCC") ; モードライン文字

(set-face-background 'fringe                           "#282828") ; fringe
(set-face-background 'modeline                         "#333") ; モードライン背景
(set-face-background 'mode-line-inactive               "#CCC") ; モードライン背景 (非アクティブ)
(set-face-background 'region                           "#66c") ; リージョン

;; linum （行番号）
(set-face-foreground 'linum "#000")
(set-face-background 'linum "#c53d43")

(global-whitespace-mode 1)
(setq whitespace-style '(face tabs tab-mark trailing empty indentation::space))
(setq whitespace-display-mappings
      '((tab-mark ?\t [?\xBB ?\t] [?\\ ?\t])))
(set-face-foreground 'whitespace-tab "#ff0000")
(set-face-background 'whitespace-tab 'nil)
(set-face-underline  'whitespace-tab t)
(global-set-key (kbd "C-x w") 'global-whitespace-mode)
