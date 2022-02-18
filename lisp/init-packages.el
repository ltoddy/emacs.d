;; -*- lexical-binding: t -*-

(provide 'init-packages)

(package-install 'company) ;; complete anything
(global-company-mode 1) ; 开启全局 Company 补全
(setq company-minimum-prefix-length 1) ;; company自动补全插件,最短补全为1
(setq company-idle-delay 0) ;; company自动补全延迟为0
(setq tab-always-indent 'complete) ;; 使用tab键来补全

;; 增强minibuffer补全
(package-install 'vertico)
(vertico-mode t)
(package-install 'orderless)
(setq completion-styles '(orderless)) ;; 自动补全的时候,支持关键词乱序搜索

(package-install 'marginalia) ;; 增强minibuffer的annotation
(marginalia-mode t)

(package-install 'embark)
(setq prefix-help-command 'embark-prefix-help-command)

(package-install 'consult) ;; 文件内搜索和函数定义跳转 <control> + s

(package-install 'nyan-mode)
(nyan-mode t)

(package-install 'magit) ; git管理工具
