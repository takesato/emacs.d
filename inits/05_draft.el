;;; http://tuxicity.se/emacs/elisp/2010/03/26/rename-file-and-buffer-in-emacs.html
;;; Renamefile and buffer 
(defun rename-this-buffer-and-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (cond ((get-buffer new-name)
               (error "A buffer named '%s' already exists!" new-name))
              (t
               (rename-file filename new-name 1)
               (rename-buffer new-name)
               (set-visited-file-name new-name)
               (set-buffer-modified-p nil)
               (message "File '%s' successfully renamed to '%s'" name (file-name-nondirectory new-name))))))))

(global-set-key (kbd "C-c r") 'rename-this-buffer-and-file)

;;; http://what-linux.seesaa.net/article/158676846.html
;;;; tree-undo
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

;;; https://github.com/Wilfred/ag.el
(setq ag-highlight-search t)

;; http://qiita.com/nysalor/items/a3810f0e5e796384a4f2
;; 先にdiredが必要
(require 'dired)
;; キーバインドは適当
(require 'peep-dired)
(define-key dired-mode-map "\C-xx" 'peep-dired)
(define-key peep-dired-mode-map "\C-xx" 'peep-dired)
