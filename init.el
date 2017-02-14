;(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
;(cask-initialize)

; ~/.emacs.d/site-lisp 以下全部読み込み
;(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
;  (add-to-list 'load-path default-directory)
;  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;      (normal-top-level-add-subdirs-to-load-path)))


(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(fset 'package-desc-vers 'package--ac-desc-version)
(package-initialize)
;;; 起動に時間がかかるようであれば, 普段は以下をコメントアウトしてください
(package-refresh-contents)

; init-loader
(package-install 'init-loader)
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

;; install packages
;;; misc
;(require 'color-moccur)
;(require 'cl)
;(require 'auto-complete-config)
;(require 'etags-table)
;;;; ruby
;(require 'rbenv)
;(require 'rinari)
;(require 'ruby-hash-syntax)
;(require 'ruby-block)
;(require 'flymake)
;;;; git
;(require 'git-gutter-fringe)
;;;; package化待ち
;;(require 'ac-company)
;;(require 'auto-complete-etags)
;;(require 'moccur-edit)
;;(require 'anything-c-moccur)
;;(require 'split-root)

;;; rbenv
;(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:"
;                       (getenv "PATH")))
;(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") exec-path))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(package-selected-packages (quote (monokai-theme git-commit-mode howm ## init-loader)))
 '(rspec-use-rake-when-possible nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
