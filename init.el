(require 'cask "/usr/local/opt/cask/cask.el")
(cask-initialize)

; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

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

