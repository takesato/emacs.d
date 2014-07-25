;;;; バックアップファイルを残さない
;;(setq make-backup-files nil)

;; バックアップファイルを作成する。
(setq make-backup-files t)

;;; バックアップファイルの保存場所を指定。
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.backup"))
            backup-directory-alist))

(setq version-control t)     ; 複数のバックアップを残します。世代。
(setq kept-new-versions 5)   ; 新しいものをいくつ残すか
(setq kept-old-versions 5)   ; 古いものをいくつ残すか
(setq delete-old-versions t) ; 確認せずに古いものを消す。
;(setq vc-make-backup-files t) ; バージョン管理下のファイルもバックアップを作る。

(setq auto-save-file-name-transforms
      `((".*/SimpleText/.*" ,temporary-file-directory t)
      (".*/Dropbox/.*" ,temporary-file-directory t)
      (".*/howm/.*" ,temporary-file-directory t)
      ("/Volumes/.*" ,temporary-file-directory t))
)
