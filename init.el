;; -*- lexical-binding: t -*-
(setq gc-cons-threshold 100000000) ;; 指定了垃圾回收前允许有多少字节的consing, 用于提升打开emacs的速度

(require 'package) ;; 更换源
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.zilongshanren.com/gnu/")
			 ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
(when (not package-archive-contents) ;; 防止反复调用 package-refresh-contents 会影响加载速
  (package-refresh-contents))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'init-packages) ;;
(require 'init-better-defaults) ;; 增强内置功能
(require 'init-keybinding) ;; 快捷键绑定
(require 'init-ui) ;;
(require 'init-better-defaults) ;; 让内置功能更好用
(require 'init-org) ;;
