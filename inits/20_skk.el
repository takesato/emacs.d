(package-install 'ddskk)

;;(setq load-path (append load-path '("~/.emacs.d/lisp/skk")))
;;(let ((default-directory (expand-file-name "~/.emacs.d/lisp")))
;; (add-to-list 'load-path default-directory)
;; (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;     (normal-top-level-add-subdirs-to-load-path)))

;;;(setq load-path (append '("/usr/local/Cellar/emacs-mac/emacs-24.4-mac-5.3/share/emacs/site-lisp/skk/") load-path))
;; SKK
;(let ((function #'(lambda ()
;                    (require 'skk)
;                    (skk-latin-mode-on))))
;  (dolist (hook '(find-file-hooks
;                  ;; ...
;                  mail-setup-hook
;                  message-setup-hook))
;    (add-hook hook function)))
; 
;(setq skk-preload t)
; 
;(global-set-key (kbd "C-x C-j") 'skk-mode)

(setq skk-kutouten-type 'en)
;; C-j の機能を別のキーに割り当て
(global-set-key (kbd "C-m") 'newline-and-indent)
;; C-\ でも SKK に切り替えられるように設定
(setq default-input-method "japanese-skk")
;; 送り仮名が厳密に正しい候補を優先して表示
(setq skk-henkan-strict-okuri-precedence t)
;;漢字登録時、送り仮名が厳密に正しいかをチェック
(setq skk-check-okurigana-on-touroku t)
 
(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)






;(require 'skk-autoloads)
;(global-set-key "\C-x\C-j" 'skk-mode)
;(global-set-key "\C-xj" 'skk-auto-fill-mode)
;(global-set-key "\C-xt" 'skk-tutorial)
; 
;;; SKK を起動していなくても、いつでも skk-isearch を使う
;(add-hook 'isearch-mode-hook 'skk-isearch-mode-setup)
;(add-hook 'isearch-mode-end-hook 'skk-isearch-mode-cleanup)
; 
;;; Org mode のときだけ句読点を変更したい
;(add-hook 'org-mode-hook
;(lambda ()
;(require 'skk)
;(setq skk-kutouten-type 'en)))
; 
;;; 文章系のバッファを開いた時には自動的に英数モード(「SKK」モード)に入る
;(let ((function #'(lambda ()
;(require 'skk)
;(skk-latin-mode-on))))
;(dolist (hook '(find-file-hooks
;;; …
;mail-setup-hook
;message-setup-hook
;wl-draft-mode-hook))
;(add-hook hook function)))












;;; --------key設定(ddskkをやっぱりつかうから引用 )----------
; 
;(define-key global-map (kbd "C-x C-o") 'skk-mode)
;(setq skk-kakutei-key (kbd "C-o"))
;(setq mac-pass-control-to-system nil)
; 
;;;----sakito氏から引用-------
; 
;(setq default-input-method "japanese-skk")
; 
;;; 送り仮名が厳密に正しい候補を優先して表示
; 
;(setq skk-henkan-strict-okuri-precedence t)
; 
;;;漢字登録時、送り仮名が厳密に正しいかをチェック
; 
;(setq skk-check-okurigana-on-touroku t)
; 
;;;----AquaSKKの辞書を参照--------
; 
;(setq skk-server-host "localhost")
; 
;(setq skk-server-portnum 1178)




;; ----------------------------------------
;; ddskk 用の設定
;; ----------------------------------------
;; パスを追加
;(setq load-path (append '("/usr/local/Cellar/emacs-mac/emacs-24.4-mac-5.1/share/emacs/site-lisp/skk/") load-path))
;;(setq load-path (append '("/usr/local/Cellar/ddskk/lisp") load-path))
;(require 'skk-setup)
; 
;;; システムにコントロールキーを渡さない
;(setq mac-pass-control-to-system nil)
;;; C-j の機能を別のキーに割り当て
;(global-set-key (kbd "C-m") 'newline-and-indent)
; 
;;; C-\ でも SKK に切り替えられるように設定
;(setq default-input-method "japanese-skk")
;;; 送り仮名が厳密に正しい候補を優先して表示
;(setq skk-henkan-strict-okuri-precedence t)
;;;漢字登録時、送り仮名が厳密に正しいかをチェック
;(setq skk-check-okurigana-on-touroku t)
; 
;;; 辞書ファイルは Dropbox 上に置く
;(setq skk-jisyo "~/Dropbox/.skk-ddskk.skk-jisyo")
;(setq skk-backup-jisyo "~/Dropbox/.skk-ddskk.skk-jisyo.backup")
; 
;;; AquaSKKとの連携
;(setq skk-server-host "localhost")
;(setq skk-server-portnum 1178)
; 
;;;モードで RET を入力したときに確定のみ行い、改行はしない
;(setq skk-egg-like-newline t)
; 
;;;モードで BS を押した時に一つ前の候補を表示
;(setq skk-delete-implies-kakutei nil)
; 
;;; "「"を入力したら"」"も自動で挿入する
;(setq skk-auto-insert-paren t)
; 
;;; 句読点
;(setq skk-kuten-touten-alist '(
;  (jp . ("．" . "，")) 
;  (en . ("." . ","))
;;	(ya . ("。" . ", "))
;))
;(setq skk-toggle-kutouten nil)
; 
;;; インクリメント検索
;(add-hook 'isearch-mode-hook
;          #'(lambda ()
;              (when (and (boundp 'skk-mode)
;                         skk-mode
;                         skk-isearch-mode-enable)
;                (skk-isearch-mode-setup))))
;(add-hook 'isearch-mode-end-hook
;          #'(lambda ()
;              (when (and (featurep 'skk-isearch)
;                         skk-isearch-mode-enable)
;                (skk-isearch-mode-cleanup))))
; 
;;; テキスト・モードでは auto-fill-mode
;(add-hook 'text-mode-hook
;          '(lambda ()
;             (setq fill-column 80)
;             (auto-fill-mode t)
;             ))
; 
;;; 日本語で $ を入力した時に対応する $ と合わせて表示
;(add-hook 'skk-mode-hook
;    '(lambda ()
;       (define-key skk-j-mode-map "$" 'self-insert-command)
;       (define-key skk-j-mode-map "\\" 'self-insert-command)
;       )
;    )
