;; server
(server-start)

;;; carbon-emacs

(when (eq system-type 'darwin)       ; もし、システムが Mac のとき
  (setq mac-command-key-is-meta nil) ; コマンドキーをメタにしない
  (setq mac-option-modifier 'meta)   ; オプションキーをメタに
  (setq mac-command-modifier 'super) ; コマンドキーを Super に
  (setq mac-pass-control-to-system t)) ; コントロールキーを Mac ではなく Emacs に渡す

(define-key global-map [(super a)] 'anything)

(define-key global-map (kbd "C-;")   'anything) ; そのお隣り
