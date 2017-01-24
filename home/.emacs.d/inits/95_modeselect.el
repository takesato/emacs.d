;;; ruler-mode
;; ルーラーを表示
(add-hook 'text-mode-hook 'ruler-mode)
(add-hook 'ruby-mode-hook 'ruler-mode)
(add-hook 'markdown-mode-hook 'ruler-mode)

;;; git-gutter
(add-hook 'ruby-mode-hook 'git-gutter-mode)
(add-hook 'markdown-mode-hook 'git-gutter-mode)

;;; zsh
;;(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
;;;(sh-set-shell "zsh")
;;(add-hook 'sh-mode-hook
;;          (lambda ()
;;            (if (string-match "\\.zsh$" buffer-file-name)
;;                (sh-set-shell "zsh"))))
;(setq auto-mode-alist (cons '("\\.zsh" . shell-script-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.zshrc" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.zsh" . shell-script-mode))

;;; ruby
;(setq auto-mode-alist (append '("\\.rb$" . ruby-mode) auto-mode-alist))
;(setq auto-mode-alist (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
;(setq auto-mode-alist (cons '("\\.thor$" . ruby-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Guardfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.wathcr\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.recipe\\'" . ruby-mode))

;;; coffee-script
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;; JavaScript

;;; Textile
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;;; Graphviz
(add-to-list 'auto-mode-alist '("\\.gv\\'" . graphviz-dot-mode))

;; Zen Coding Mode
(add-hook 'html-helper-mode-hook 'zencoding-mode)
;(add-hook 'sgml-mode-hook 'zencoding-mode)
;(add-hook 'html-mode-hook 'zencoding-mode)
;(add-hook 'text-mode-hook 'zencoding-mode)
;(add-hook 'php-mode-hook 'zencoding-mode)
;(add-hook 'ruby-mode-hook 'zencoding-mode)

;; org-mode
;; 拡張子がorgのファイルを開いた時，自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org" . org-mode))
(add-to-list 'auto-mode-alist '("\\.howm$" . org-mode))
(add-to-list 'auto-mode-alist '(".*/SimpleText/.*" . org-mode))

;; markdonw-mode
(add-hook 'markdown-mode-hook 'turn-on-orgtbl)
; file associations
;(defun markdown-outline-mode ()
;  (markdown-mode)       ; major
;  (outline-minor-mode)  ; minor
;)
;(add-to-list 'auto-mode-alist '("\\.md$" . markdown-outline-mode))
