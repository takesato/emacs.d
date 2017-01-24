;; direx-el
;; (use popwin-el devloper ver.)
;; https://github.com/m2ym/direx-el
(require 'direx)
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(require 'direx-project)
(setq direx:leaf-icon "  "
      direx:open-icon "▾ "
      direx:closed-icon "▸ ")
(push '(direx:direx-mode :position left :width 40 :dedicated t)
      popwin:special-display-config)
;;;(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)

(global-set-key (kbd "C-x C-j") 'direx-project:jump-to-project-root-other-window)
