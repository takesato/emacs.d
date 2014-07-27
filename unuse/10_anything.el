;;; anything
;;; moccur
;;; moccur-edit
 ;;; anything-c-moccur
(setq moccur-split-word t)
(setq anything-c-moccur-anything-idle-delay 0.1)
(setq anything-c-moccur-higligt-info-line-flag t)
(setq anything-c-moccur-enable-auto-look-flag t)
(setq anything-c-moccur-enable-initial-pattern nil)

;;; split-root
;(defun anything-display-function--split-root (buf)
;  (let ((parcent 40.0))
;    (set-window-buffer (split-root-window (truncate (* (frame-height) (/ parcent 100.0)))) buf)))
;(setq anything-display-function 'anything-display-function--split-root)
