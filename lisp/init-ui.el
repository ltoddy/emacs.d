;; -*- lexical-binding: t -*-

(provide 'init-ui)

;; (toggle-frame-maximized) ;; 启动emacs最大化窗口
(set-frame-font "Monaco" nil t) ;; 设置字体 Cousine for Powerline
(set-face-attribute 'default nil :height 100) ;; 更改字体大小
(scroll-bar-mode -1) ;; 不显示scroll bar
(global-hl-line-mode 1) ;; 高亮当前行
(global-linum-mode 1) ;; 显示行号
(setq-default cursor-type 'bar) ;; 更改鼠标样式
(show-paren-mode t) ;; 显示括号匹配
(tool-bar-mode -1) ;; 不显示tool-bar

