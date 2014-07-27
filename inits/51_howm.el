;;(defvar howm-view-title-header "#")  ; this should be evaluated in advance to handle markdown
(setq howm-view-title-header "#") ;; ← howm のロードより前に書くこと
(setq howm-view-title-regexp-grep "^\# +[^2]")
(setq howm-view-title-regexp "^\\#\\( +\\([^2].*\\)\\|\\)$")

(require 'howm)

(setq howm-directory "~/workspace/bitbucket.org/dr/howm")

(autoload 'howm-menu "howm" "Hitori Otegaru Wiki Modoki" t)

;;; global configs
(global-set-key "\C-c,," 'howm-menu)
(setq howm-menu-lang 'ja)

; disable auto-fill-mode
(add-hook 'howm-mode-hook '(lambda () (auto-fill-mode -1)))

(setq howm-menu-file "~/workspace/bitbucket.org/dr/.howm-menu")

;; メモ置き場/年/月/年_月_日.howm に
(setq howm-file-name-format "%Y/%m/%Y_%m_%d.md")

(defun orgtbl-to-gfm (table params)
  "Convert the Orgtbl mode TABLE to GitHub Flavored Markdown."
  (let* ((alignment (mapconcat (lambda (x) (if x "|--:" "|---"))
                               org-table-last-alignment ""))
         (params2
          (list
           :splice t
           :hline (concat alignment "|")
           :lstart "| " :lend " |" :sep " | ")))
    (orgtbl-to-generic table (org-combine-plists params2 params))))

