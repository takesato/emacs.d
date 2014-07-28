;; mail address
(setq user-mail-address "takehitosato@gmail.com")

;; initial settings
(setq inhibit-startup-message t)            ; スタートページ非表示
(setq ring-bell-function 'ignore)           ; ベルを鳴らさない

;;; mode line
(setq line-number-mode t)
(setq column-number-mode t)                 ; ステータスに行番号＆列番号表示
(setq truncate-lines nil)                   ; 折り返し
(setq truncate-partial-width-windows nil)   ; 分割時にもきちんと折り返す

(set-frame-parameter nil 'alpha 70)       ; 透明度
(menu-bar-mode -1)                        ; メニューバー非表示
(tool-bar-mode -1)                        ; ツールバー非表示
;(set-scroll-bar-mode 'right)              ; スクロールバー表示
(setq line-spacing 0.2)                   ; 行間
(setq ns-pop-up-frames nil)               ; 複数の emacs を開かない

(require 'tron-theme)
;(load-theme 'tron t)
;(enable-theme 'tron)

;;; (require 'color-theme)
;;; (color-theme-initialize)
;;; (color-theme-molokai) ;; 使うカラーテーマ名

;; for time on status line
(progn
  (setq display-time-string-forms
        '((format "%s/%s/%s %s %s:%s %s" year month day dayname 24-hours minutes load))))
(display-time)

;;; GCを減らす
(setq gc-cons-threshold (* 50 gc-cons-threshold))

;;; ログの記録量を増やす
(setq message-log-max 10000)

;;; 履歴存数を増やす
(setq history-length 1000)


;;; ダイアログボックスを使わない
(setq use-dialog-box nil)
(defalias 'message-box 'message)

;;; yesで答る部分もyで答えられるように
(defalias 'yes-or-no-p 'y-or-n-p)

(show-paren-mode t)

(setq kill-whole-line t)

;; 分割を左右に
(setq howm-view-split-horizontally t)

;;; 折り返し表示ON/OFF
;;====================================
(defun toggle-truncate-lines ()
  "折り返し表示をトグル動作します."
  (interactive)
  (if truncate-lines
      (setq truncate-lines nil)
    (setq truncate-lines t))
  (recenter))

(global-set-key "\C-c\C-l" 'toggle-truncate-lines) ; 折り返し表示ON/OFF

;; 1行ずつスクロール
(setq scroll-step 1)

;; インデント設定
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 2)

;;タブ幅を 2 に設定
(setq-default tab-width 2)
(c-set-offset 'case-label '+)

;; narrowingを使う
(put 'narrow-to-region 'disabled nil)  ; C-c n n, C-c n w

;; タイムローケールを英語に
(setq system-time-locale "C")

;;; http://d.hatena.ne.jp/gengar/20091215/1260850637
(defadvice linum-on (around my-linum-on () activate)
  (unless (and (fboundp 'org-mode-p) (org-mode-p))
    ad-do-it))

;; linum （行番号）
(global-linum-mode t)
(setq linum-format "%4d ")
(set-face-foreground 'linum "#000")
(set-face-background 'linum "#48B0AA")
;(setq linum-format "%4d \u2502")
;(set-face-background 'linum "#c53d43")

(require 'cl)

(defun close-all-buffers ()
  (interactive)
  (loop for buffer being the buffers
     do (kill-buffer buffer)))

;; テンポラリバッファを作成し、それをウィンドウに表示します。
(defun create-temporary-buffer ()
  (interactive)
  (switch-to-buffer (generate-new-buffer "*temp*"))
  (setq buffer-offer-save nil))
;; C-c t でテンポラリバッファを作成します。
(global-set-key (kbd "C-c t") 'create-temporary-buffer)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "C-c r") 'rename-this-buffer-and-file)

(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key (kbd "C-c d") 'dash-at-point)
(global-set-key (kbd "C-c e") 'dash-at-point-with-docset)

;; avoid "Symbolic link to SVN-controlled source file; follow link? (yes or no)"
(setq vc-follow-symlinks t)

(eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(global-set-key [kp-delete] 'delete-char)

(global-git-gutter-mode +1)

;;; https://github.com/Wilfred/ag.el
(setq ag-highlight-search t)

;; indent
(add-hook 'sh-mode-hook '(lambda () (interactive)
                           (setq sh-basic-offset 2 sh-indentation 2)))

;; 現在行をハイライト
(global-hl-line-mode)

(setq whitespace-style '(face tabs tab-mark trailing empty indentation::space spaces space-mark trailing space-before-tab space-after-tab::space))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?　])
        (tab-mark   ?\t [?\xBB ?\t])
(set-face-attribute 'whitespace-trailing nil
                    :foreground "DeepPink"
                                        :underline t)
(set-face-attribute 'whitespace-tab nil
                    :foreground "LightSkyBlue"
                                        :underline t)
(set-face-attribute 'whitespace-space nil
                    :foreground "GreenYellow"
                                        :weight 'bold)))
(global-whitespace-mode t)
(global-set-key (kbd "C-x w") 'global-whitespace-mode)

(global-auto-revert-mode 1)
