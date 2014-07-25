;(cua-mode t)
;(setq cua-enable-cua-keys nil)
;
;(global-set-key (kbd "C-c C-b") 'cua-toggle-rectangle-mark)

;;; cua-mode
 (cua-mode t)
 (setq cua-enable-cua-keys nil)
 (setq cua-auto-tabify-rectangles nil)  ;; Don't tabify after rectangle commands
 (transient-mark-mode 1)                ;; No region when it is not highlighted
; (transient-mark-mode t)
; (setq cua-keep-region-after-copy t)    ;; Standard Windows behaviour

(define-key global-map (kbd "C-RET")   'cua-set-rectangle-mark)

(defadvice cua-sequence-rectangle (around my-cua-sequence-rectangle activate)
  "連番を挿入するとき、紫のところの文字を上書きしないで左にずらす"
  (interactive
   (list (if current-prefix-arg
             (prefix-numeric-value current-prefix-arg)
           (string-to-number
            (read-string "Start value: (0) " nil nil "0")))
         (string-to-number
          (read-string "Increment: (1) " nil nil "1"))
         (read-string (concat "Format: (" cua--rectangle-seq-format ") "))))
  (if (= (length format) 0)
      (setq format cua--rectangle-seq-format)
    (setq cua--rectangle-seq-format format))
  (cua--rectangle-operation 'clear nil t 1 nil
     '(lambda (s e l r)
         (kill-region s e)
         (insert (format format first))
         (yank)
         (setq first (+ first incr)))))
