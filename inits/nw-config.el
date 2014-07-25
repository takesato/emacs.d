;; server
(server-start)

;;; nw-emacs

(when (eq system-type 'darwin)       ; もし、システムが Mac のとき
  (setq mac-command-key-is-meta nil) ; コマンドキーをメタにしない
  (setq mac-option-modifier 'meta)   ; オプションキーをメタに
  (setq mac-command-modifier 'super) ; コマンドキーを Super に
  (setq mac-pass-control-to-system t)) ; コントロールキーを Mac ではなく Emacs に渡す

(define-key global-map [(super a)] 'anything)

;(define-key global-map (kbd "C-q")   'anything) ; そのお隣り
;(define-key global-map (kbd "C-z")   'anything) ; そのお隣り

(defun copy-from-osx ()
   (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
   (let ((process-connection-type nil))
          (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
                   (process-send-string proc text)
                          (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)
