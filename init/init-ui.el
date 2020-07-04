(provide 'init-ui)

;; 启动emacs时，设置窗口大小
(if (not (eq window-system nil))
    (progn
      ;; top, left ... must be integer
      (add-to-list 'default-frame-alist
                   (cons 'top  (/ (x-display-pixel-height) 5)))
      (add-to-list 'default-frame-alist
                   (cons 'left (/ (x-display-pixel-width) 3)))
      (add-to-list 'default-frame-alist
                   (cons 'height (/ (* 3 (x-display-pixel-height))
                                    (* 5 (frame-char-height)))))
      (add-to-list 'default-frame-alist
                   (cons 'width (/ (* 3 (x-display-pixel-width))
                                   (* 8 (frame-char-width)))))))

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 高亮当前行
(global-hl-line-mode 1)
;; 更改显示字体大小 11pt
;; see more: https://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 120)
(set-default-font "Monaco")
;; 显示行号
(global-linum-mode 1)

;; 括号匹配高亮
(show-paren-mode t)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 更改光标格式
(setq cursor-type (quote bar))

;; 更改光标的样式
;; see more: https://stackoverflow.com/questions/18172728/the-difference-between-setq-and-setq-default-in-emacs-lisp
(setq-default cursor-type 'bar)

;; nyan cat
(require 'nyan-mode)
(nyan-mode t)
