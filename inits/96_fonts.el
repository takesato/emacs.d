;; Rictyインストールして使う
;; http://knagayama.net/blog/2011/07/27/generate-ricty-font/
;;
;; http://save.sys.t.u-tokyo.ac.jp/~yusa/fonts/ricty.html
;; からscriptをDL
;; http://levien.com/type/myfonts/inconsolata.html
;; からOpenType fileをDL
;; http://mix-mplus-ipa.sourceforge.jp/download.html
;; からMigu 1MをDL

;; fontforgeが必要なのでインストール
;;
;;   lionだとそのままIインストールできないので、
;;   $ brew install fontforge --use-clang
;;   とする
;;   https://github.com/mxcl/homebrew/issues/8589
;;
;; Ricty生成
;; $ sh ricty_generator.sh auto

(when window-system
  (progn
    (set-face-attribute 'default nil
                        :family "Ricty"
                        :height 160)
    (set-fontset-font (frame-parameter nil 'font)
                      'japanese-jisx0208
                      '("Ricty" . "iso10646-1"))
    (setq default-frame-alist
          (append
           (list
            '(width  . 80)  ;; 半角文字で 80 文字分のフレーム幅
            '(height . 51)
            '(alpha  . 80))
           default-frame-alist))))
