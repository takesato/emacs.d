;; mail address
(setq user-mail-address "takehitosato@gmail.com")

;; initial settings
(setq inhibit-startup-message t)            ; スタートページ非表示
(setq ring-bell-function 'ignore)           ; ベルを鳴らさない
(setq column-number-mode t)                 ; ステータスに行番号＆列番号表示
(setq truncate-lines nil)                   ; 折り返し
(setq truncate-partial-width-windows nil)   ; 分割時にもきちんと折り返す

;; Window settings
(if window-system
    (progn
      (set-frame-parameter nil 'alpha 70)       ; 透明度
      (menu-bar-mode t)                         ; メニューバー表示
      (tool-bar-mode nil)                       ; ツールバー非表示
      (set-scroll-bar-mode 'right)              ; スクロールバー表示
      (setq line-spacing 0.2)                   ; 行間
      (setq ns-pop-up-frames nil)               ; 複数の emacs を開かない
))
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

(tool-bar-mode -1)
(menu-bar-mode -1)

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
(put 'narrow-to-region 'disabled nil)

;; タイムローケールを英語に
(setq system-time-locale "C")

;;; http://d.hatena.ne.jp/gengar/20091215/1260850637
(defadvice linum-on (around my-linum-on () activate)
  (unless (and (fboundp 'org-mode-p) (org-mode-p))
    ad-do-it))

;;; linum
;; 行番号を表示
(global-linum-mode t)
(setq linum-format "%4d ")

;;; ruler-mode
;; ルーラーを表示
(add-hook 'text-mode-hook 'ruler-mode)


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
(global-set-key "\C-ct" 'create-temporary-buffer)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
