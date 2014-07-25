;;(setq load-path (append load-path '("~/.emacs.d/lisp/skk")))
;;(let ((default-directory (expand-file-name "~/.emacs.d/lisp")))
;; (add-to-list 'load-path default-directory)
;; (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;     (normal-top-level-add-subdirs-to-load-path)))

;; SKK
(let ((function #'(lambda ()
        (require 'skk)
        (skk-latin-mode-on))))
  (dolist (hook '(find-file-hooks
      ;; ...
      mail-setup-hook
      message-setup-hook))
    (add-hook hook function)))

(setq skk-preload t)

;; C-j の機能を別のキーに割り当て
(global-set-key (kbd "C-m") 'newline-and-indent)
;; C-\ でも SKK に切り替えられるように設定
(setq default-input-method "japanese-skk")
;; 送り仮名が厳密に正しい候補を優先して表示
(setq skk-henkan-strict-okuri-precedence t)
;;漢字登録時、送り仮名が厳密に正しいかをチェック
(setq skk-check-okurigana-on-touroku t)

(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)
