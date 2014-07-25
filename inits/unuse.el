      ;(set-frame-font "Ricty-18")
      ;; fullscreen
      ;; (auto-install-from-emacswiki "fullscreen.el")
      ;; (require 'fullscreen)                     ; 起動時にフルスクリーンにする
      ;; (fullscreen)

;;; todotxt
;;;(require 'todotxt)
;;;(custom-set-variables
;;; '(todotxt-file "/Users/work/Dropbox/Texts/Todo/emacs.txt" nil (todotxt)))
;;;(global-set-key (kbd "C-c t") 'todotxt)


;(require 'tramp)
;(require 'textile-mode)

;;graphviz mode
;(load "graphviz-dot-mode")

;;php-mode
;(load-library "php-mode")
;(require 'php-mode)

;;;;;;;;; linum
;; (global-set-key [f9] 'linum-mode)

;; ;; メージャーモード/マイナーモードでの指定
;; (defvar my-linum-hook-name nil)
;; (mapc (lambda (hook-name)
;;           (add-hook hook-name (lambda () (linum-mode t))))
;;        my-linum-hook-name)

;; ;; ファイル名での判定
;; (defvar my-linum-file nil)
;; (defun my-linum-file-name ()
;;   (when (member (buffer-name) my-linum-file)
;;                 (linum-mode t)))
;; (add-hook 'find-file-hook 'my-linum-file-name)

;; ;; 拡張子での判定
;; (defvar my-linum-file-extension nil)
;; (defun my-linum-file-extension ()
;;   (when (member (file-name-extension (buffer-file-name)) my-linum-file-extension)
;;                 (linum-mode t)))
;; (add-hook 'find-file-hook 'my-linum-file-extension)

;; auto save buffers
;x(auto-install-from-url "http://0xcc.net/misc/auto-save/auto-save-buffers.el")
;x(require 'auto-save-buffers)

;(auto-install-from-url "http://svn.coderepos.org/share/lang/elisp/auto-save-buffers-enhanced/trunk/auto-save-buffers-enhanced.el")

;;(require 'auto-save-buffers-enhanced)
;;(auto-save-buffers-enhanced t)
;;(auto-save-buffers-enhanced-include-only-checkout-path t)
;;;x(setq auto-save-buffers-enhanced-save-scratch-buffer-to-file-p t)
;;;x(setq auto-save-buffers-enhanced-file-related-with-scratch-buffer "~/.logs/.scratch")
;;(run-with-idle-timer 60 t 'auto-save-buffers-enhanced)

;; auto reload
;(global-auto-revert-mode)


;(defvar org-directory "")

; C-x C-q
;(toggle-read-only)


;;(tool-bar-mode -1)

;; (auto-install-batch "anything")
;(require 'anything)
;(add-to-list 'anything-sources 'anything-c-source-emacs-commands)
;; (install-elisp-from-emacswiki "color-moccur.el")
;; (install-elisp "http://svn.coderepos.org/share/lang/elisp/anything-c-moccur/trunk/anything-c-moccur.el")
;; (install-elisp "http://www.bookshelf.jp/elc/moccur-edit.el")
;; (install-elisp "http://nschum.de/src/emacs/split-root/split-root.el")

;; flymake （エラー表示）
;(set-face-background 'flymake-errline "#900")
;(set-face-underline  'flymake-errline "#f00")

;;;; coloring for spacing
;; (defadvice font-lock-mode (before my-font-lock-mode ())
;;   (font-lock-add-keywords
;;    major-mode
;;    '( ("　"    0 my-face-b-1 append)    ; 全角スペース
;;       ("\t"    0 my-face-b-2 append)    ; タブ文字
;;       (" "     0 my-face-b-3 append)    ; 半角スペース
;;       ("[ ]+$" 0 my-face-u-1 append)    ; 文末の半角スペース
;;       ("=>"    0 my-face-b-4 append)
;;       )))
;; (defvar my-face-b-1 'my-face-b-1)
;; (defvar my-face-b-2 'my-face-b-2)
;; (defvar my-face-b-3 'my-face-b-3)
;; (defvar my-face-b-4 'my-face-b-4)
;; (defvar my-face-u-1 'my-face-u-1)
;; (defface my-face-b-1 '((t (:background "#666"))) nil)
;; (defface my-face-b-2 '((t (:background "#cc0"))) nil)
;; (defface my-face-b-3 '((t (:background "#111"))) nil)
;; (defface my-face-b-4 '((t (:foreground "#f66"))) nil)
;; (defface my-face-u-1 '((t (:foreground "#0cc" :underline t))) nil)
;; (ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
;; (ad-activate 'font-lock-mode)
;; (add-hook 'find-file-hooks '(lambda ()
;;                               (if font-lock-mode nil
;;                                 (font-lock-mode t))))

;;;;; Tabbar
;;;(set-face-attribute 'tabbar-default-face nil     :background "gray60")
;;;(set-face-attribute 'tabbar-unselected-face nil  :background "gray85"   :foreground "#000000"  :box nil)
;;;(set-face-attribute 'tabbar-selected-face nil    :background "#c53d43"  :foreground "#000000"   :box nil)
;;;(set-face-attribute 'tabbar-button-face nil      :box '(:line-width 1 :color "gray72" :style released-button))
;;;(set-face-attribute 'tabbar-separator-face nil   :height 0.7)

;; ;; color-theme
;; (add-to-list 'load-path "~/.emacs.d/color-theme")
;; (require 'color-theme)
;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;; ;;     (color-theme-hober)))
;; ;;     (color-theme-arjen)))
;; ;;     (color-theme-robin-hood)))
;;      (color-theme-billw)))


;;; key-chord
;; (install-elisp "http://www.emacswiki.org/cgi-bin/wiki/download/key-chord.el")
;x(require 'key-chord)
;x(setq key-chord-two-keys-delay 0.04)
;x(key-chord-mode 1)

;x(key-chord-define-global "fj" 'dabbrev-expand)       ; 動的略語展開
;x(key-chord-define-global "dk" 'anything)
;x(key-chord-define-global "xo" 'other-window)
;x(key-chord-define-global "f`" 'whitespace-cleanup)
;x(key-chord-define-global "f\\" 'indent-region)

;x(key-chord-define-global ";r" 'org-remember)
;x(key-chord-define-global ";s" 'anything-c-moccur-occur-by-moccur)
;x(key-chord-define-global ";;" 'anything)
;; 補完
;x(setq hippie-expand-try-functions-list
;x      '(try-complete-file-name-partially
;x        try-complete-file-name
;x        try-expand-dabbrev
;x        try-expand-dabbrev-all-buffers
;x        try-expand-dabbrev-from-kill
;x        try-complete-lisp-symbol-partially
;x        try-complete-lisp-symbol
;x        ))


;; (global-set-key "\C-a" '(lambda (arg)
;;                           (interactive "^p")
;;                           (cond
;;                            ((bolp)
;;                             (call-interactively 'back-to-indentation))
;;                            (t
;;                             (move-beginning-of-line arg))))) ;
;; \C-aでインデントを飛ばした行頭に移動
;; (defun beginning-of-indented-line (current-point)
;;   "インデント文字を飛ばした行頭に戻る。ただし、ポイントから行頭までの間にインデント文字しかない場合は、行頭に戻る。"
;;   (interactive "d")
;;   (if (string-match
;;        "^[ \t]+$"
;;        (save-excursion
;;          (buffer-substring-no-properties
;;           (progn (beginning-of-line) (point))
;;           current-point)))
;;       (beginning-of-line)
;;     (back-to-indentation)))


;; (defun beginning-of-visual-indented-line (current-point)
;;   "インデント文字を飛ばした行頭に戻る。ただし、ポイントから行頭までの間にインデント文 字しかない場合は、行頭に戻る。"
;;   (interactive "d")
;;   (let ((vhead-pos (save-excursion (progn (beginning-of-visual-line) (point))))
;;         (head-pos (save-excursion (progn (beginning-of-line) (point)))))
;;     (cond
;;      ;; 物理行の1行目にいる場合
;;      ((eq vhead-pos head-pos)
;;       (if (string-match
;;            "^[ \t]+$"
;;            (buffer-substring-no-properties vhead-pos current-point))
;;           (beginning-of-visual-line)
;;         (back-to-indentation)))
;;      ;; 物理行の2行目以降の先頭にいる場合
;;      ((eq vhead-pos current-point)
;;       (backward-char)
;;       (beginning-of-visual-indented-line (point)))
;;      ;; 物理行の2行目以降の途中にいる場合
;;      (t (beginning-of-visual-line)))))

;x(global-set-key (kbd "C-h")    'backward-delete-char) ; C-h を backspace に

;x(global-set-key (kbd "C-j")    'newline)              ; 単純改行
;x(global-set-key (kbd "C-m")    'newline-and-indent)   ; 改行時に自動インデント
;x(global-set-key (kbd "M-<RET>") 'ns-toggle-fullscreen); fullscreen toggle

;; for tab
;x(setq-default tab-width 2)
;x;x(setq tab-stop-list
;x      '(2 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
;x(setq-default indent-tabs-mode nil)     ; タブ文字は半角スペースに
;x(setq-default indicate-empty-lines t)   ; ファイルの最終行を以降を明示する
;x(setq indent-line-function 'indent-relative-maybe)

;; for major-mode
;x(define-key zencoding-mode-keymap (kbd "<C-return>") nil)
;x(define-key zencoding-mode-keymap (kbd "<S-return>") 'zencoding-expand-line)

;; anything
;(define-key global-map (kbd "C-l") 'anything) ; けんたろさんはこれっぽい
;(define-key global-map (kbd "C-x b") 'anything) ; ありえるの人はこれらしい
;(define-key global-map (kbd "C-;")   'anything) ; そのお隣り

;x(anything-complete-shell-history-setup-key (kbd "C-o"))                  ;; shell の履歴を取得する
;x(global-set-key (kbd "M-y") 'anything-show-kill-ring)                    ;; kill ring history

;; ;; auto-complete-ruby
;; (when (require 'auto-complete nil t)
;;   (global-auto-complete-mode t)
;;   (setq ac-dwim nil)
;;   (set-face-background 'ac-selection-face "steelblue")
;; ;;  (set-face-background 'ac-menu-face "skyblue")
;;   (setq ac-auto-start t)
;;   (global-set-key "\M-/" 'ac-start)
;;   (setq ac-sources '(ac-source-abbrev ac-source-words-in-buffer))
;;   (add-hook 'ruby-mode-hook
;;             (lambda ()
;;               (require 'rcodetools)
;;               (require 'auto-complete-ruby)
;;               (make-local-variable 'ac-omni-completion-sources)
;;               (setq ac-omni-completion-sources '(("\\.\\=" . (ac-source-rcodetools)))))))

;; ;; ri-emacs
;; (setq ri-ruby-script "~/.emacs.d/ruby/ri-emacs.rb")
;; (autoload 'ri "~/.emacs.d/ruby/ri-ruby.el" nil t)
;; (add-hook 'ruby-mode-hook (lambda ()
;;                             (local-set-key "\M-r" 'ri)
;;                             (local-set-key "\M-c" 'ri-ruby-complete-symbol)
;;                                         ;(local-set-key "\M-g" 'ri-ruby-show-args)
;;                             ))

;;; ruby-block
;; (auto-install-from-emacswiki "ruby-block.el")

;(add-hook 'ruby-mode-hook
;          '(lambda ()
;             (setq tab-width 2)
;             (setq ruby-indent-level tab-width)))


;;; ruby
;; sudo apt-get install ruby-mode
;+(add-to-list 'load-path "~/.emacs.d/site-lisp/ruby")

;; SKKとバッティングするので使わない
;; ruby-electric.el --- electric editing commands for ruby files
;(require 'ruby-electric)
;(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))


;(add-to-list 'align-rules-list
;             '(ruby-comma-delimiter
;               (regexp . ",\\(\\s-*\\)[^# \t\n]")
;               (repeat . t)
;               (modes  . '(ruby-mode))))
;(add-to-list 'align-rules-list
;             '(ruby-hash-literal
;               (regexp . "\\(\\s-*\\)=>\\s-*[^# \t\n]")
;               (repeat . t)
;               (modes  . '(ruby-mode))))

;;; Hide-show
;(require 'hideshow)
;(add-to-list 'hs-special-modes-alist
;  (list 'ruby-mode
;        (concat "\\(^\\s-*"
;                ruby-electric-simple-keywords-re
;                "\\|{\\|\\[\\)")
;        "end\\|\\]\\|}" "#"
;        'ruby-forward-sexp nil))



;; (auto-install-batch "auto-complete development version")
;; (auto-complete-batch "auto-complete development version")
;; (auto-install-from-emacswiki "auto-complete-etags.el")
;; (auto-install-from-emacswiki "etags-table.el")

;; company
;; (install-elisp "http://nschum.de/src/emacs/company-mode/company-0.5.tar.bz2")

;; ac-company
;; (install-elisp "https://raw.github.com/buzztaiki/auto-complete/master/ac-company.el")

;;; for cperl-mode
;;(setq plcmp-use-keymap nil)
;;(require 'perl-completion)
;;(add-hook 'cperl-mode-hook
;;          '(lambda ()
;;             (progn
;;               (auto-complete-init-sources)
;;               (add-to-list 'ac-sources 'ac-source-perl-completion)
;;               (perl-completion-mode t)
;;              )))

;;; Rinari
;; git clone git://github.com/eschulte/rinari.git
;; cd rinari
;; git submodule init
;; git submodule update
;; (install-elisp-from-emacswiki "ruby-compilation.el")
(add-to-list 'load-path "~/.emacs.d/site-lisp/rinari")

;;; rails
;; (defun try-complete-abbrev (old)
;;   (if (expand-abbrev) t nil))
;; (setq hippie-expand-try-functions-list
;;       '(try-complete-abbrev
;;         try-complete-file-name
;;         try-expand-dabbrev
;;         ))
;; (setq rails-use-mongrel t)

;; (require 'cl)
;; (require 'rails)
;; (define-key rails-minor-mode-map "\C-c\C-p" 'rails-lib:run-primary-switch)
;; (define-key rails-minor-mode-map "\C-c\C-n" 'rails-lib:run-secondary-switch)

;; https://github.com/mlf176f2/auto-indent-mode.el

;(require 'auto-indent-mode)

;(setq auto-indent-key-for-end-of-line-then-newline "<M-return>")
;(setq auto-indent-key-for-end-of-line-insert-char-then-newline "<M-S-return>")
;(auto-indent-global-mode)
;;;(setq auto-indent-on-visit-file t) ;; If you want auto-indent on for files
;;;(require 'auto-indent-mode)
;;;(add-hook 'emacs-lisp-mode-hook 'auto-indent-minor-mode)


;;  (autoload 'auto-indent-yank "auto-indent-mode" "" t)
;;   (autoload 'auto-indent-yank-pop "auto-indent-mode" "" t)

;;   (define-key global-map [remap yank] 'auto-indent-yank)
;;   (define-key global-map [remap yank-pop] 'auto-indent-yank-pop)

;;   (autoload 'auto-indent-delete-char "auto-indent-mode" "" t)
;;   (define-key global-map [remap delete-char] 'auto-indent-delete-char)

;;   (autoload 'auto-indent-kill-line "auto-indent-mode" "" t)
;;   (define-key global-map [remap kill-line] 'auto-indent-kill-line)


;;;;; http://www.emacswiki.org/emacs/hl-line+.el
;;;(require 'hl-line)
;;;(set-face-background 'hl-line "#333333")
;;;(global-hl-line-mode)
;;; 
;;;;; http://tmaeda.s45.xrea.com/td/20080221.html
;;;;; http://www.emacswiki.org/cgi-bin/wiki/col-highlight.el
;;;;; http://www.emacswiki.org/cgi-bin/wiki/vline.el
;;;(require 'col-highlight)
;;;(column-highlight-mode 1)
;;;(custom-set-faces
;;; '(col-highlight ((t (:background "#333333")))))

