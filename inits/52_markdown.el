(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)

; file associations
(defun markdown-text-mode ()
  (markdown-mode)       ; major
  (outline-minor-mode)  ; minor
)

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-text-mode))
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

