(package-install 'neotree)
;(require 'neotree)

(global-set-key (kbd "C-x C-t") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)

;; neotree でファイルを新規作成した後、自動的にファイルを開く
(setq neo-create-file-auto-open t)

;; delete-other-window で neotree ウィンドウを消さない
(setq neo-persist-show t)

;; キーバインドをシンプルにする
(setq neo-keymap-style 'concise)

;; neotree ウィンドウを表示する毎に current file のあるディレクトリを表示する
(setq neo-smart-open t)

(setq neo-vc-integration nil)
