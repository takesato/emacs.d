;; indent
(add-hook 'sh-mode-hook '(lambda () (interactive)
        (setq sh-basic-offset 2 sh-indentation 2)))

(add-to-list 'auto-mode-alist
        '("\\.zshrc" . shell-script-mode))
(add-to-list 'auto-mode-alist
        '("\\.zsh" . shell-script-mode))

;;(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
;;;(sh-set-shell "zsh")
;;(add-hook 'sh-mode-hook
;;          (lambda ()
;;            (if (string-match "\\.zsh$" buffer-file-name)
;;                (sh-set-shell "zsh"))))

;(setq auto-mode-alist (cons '("\\.zsh" . shell-script-mode) auto-mode-alist))
