(setq backup-directory-alist
      (cons (cons ".*" (expand-file-name "~/.emacs.d/backup"))
	    backup-directory-alist))

;; avoid "Symbolic link to SVN-controlled source file; follow link? (yes or no)"
(setq vc-follow-symlinks t)


(eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(global-set-key [kp-delete] 'delete-char)

;(define-key cua-global-keymap cua-rectangle-mark-key 'cua-set-rectangle-mark)
;(define-key cua-global-keymap (kbd "C->") 'cua-toggle-global-mark)

;; cua-modeの設定
(cua-mode t)  ; cua-modeをオン
(setq cua-enable-cua-keys nil)  ; CUAキーバインドを無効化
(define-key global-map (kbd "C-x SPC") 'cua-set-rectangle-mark)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(global-linum-mode t))

(global-git-gutter-mode +1)
(add-hook 'ruby-mode-hook 'git-gutter-mode)

(setq linum-format "%4d \u2502")


(require 'rspec-mode)
(custom-set-variables '(rspec-use-rake-flag nil))
(global-set-key [f10] 'rspec-verify-single)
(defun my-compilation-hook ()
  (when (not (get-buffer-window "*compilation*"))
    (save-selected-window
      (save-excursion
        (let* ((w (split-window-vertically))
               (h (window-height w)))
          (select-window w)
          (switch-to-buffer "*compilation*")
          (shrink-window (- h 10)))))))
(add-hook 'compilation-mode-hook 'my-compilation-hook)

