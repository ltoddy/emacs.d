;; -*- lexical-binding: t -*-

(provide 'init-ui)

;; (toggle-frame-maximized) ;; 启动emacs最大化窗口
(set-frame-font "Monaco" nil t) ;; 设置字体 Cousine for Powerline
(set-face-attribute 'default nil :height 100) ;; 更改字体大小
(scroll-bar-mode -1) ;; 不显示scroll bar
(global-hl-line-mode 1) ;; 高亮当前行
(global-linum-mode 1) ;; 显示行号
(line-number-mode 1) ;; 展示当前的行号
(column-number-mode 1) ;; 展示当前的列号
(size-indication-mode t) ;; Toggle automatic display of the size of the buffer.
(setq-default cursor-type 'bar) ;; 更改鼠标样式
(show-paren-mode t) ;; 显示括号匹配
(tool-bar-mode -1) ;; 不显示tool-bar

(display-time-mode t) ;; 展示当前时间
(setq display-time-format "%Y-%m-%d %H:%M:%S")
(setq display-time-interval 1)
(setq display-time-default-load-average nil)
