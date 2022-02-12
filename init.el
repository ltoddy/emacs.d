;; -*- lexical-binding: t -*-

;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |

(require 'package) ;; 更换源
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.zilongshanren.com/gnu/")
			 ("melpa" . "http://elpa.zilongshanren.com/melpa/")))

(when (not package-archive-contents) ;; 防止反复调用 package-refresh-contents 会影响加载速度
  (package-refresh-contents))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-better-defaults) ;; 增强内置功能
(require 'init-keybinding) ;; 快捷键绑定

(package-install 'company)
(package-install 'vertico)
(package-install 'orderless)
(package-install 'marginalia)
(package-install 'embark)
(package-install 'consult)
(package-install 'nyan-mode)

(nyan-mode t)

(vertico-mode t)
(setq completion-styles '(orderless))
(marginalia-mode t)
(global-set-key (kbd "C-;") 'embark-act)
(global-set-key (kbd "C-s") 'consult-line)

(global-set-key (kbd "C-x b") 'consult-buffer)

(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

(toggle-frame-maximized)

(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-c") 'kill-ring-save)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-z") 'undo)
(global-set-key (kbd "s-x") 'kill-region)
(global-set-key (kbd "s-b") 'consult-imenu)
(global-set-key (kbd "s-q") 'save-buffers-kill-emacs)

(show-paren-mode t) ;; 显示括号匹配
(tool-bar-mode -1) ;; 不显示tool-bar
(scroll-bar-mode -1)
(global-hl-line-mode 1)
(global-linum-mode 1)
(setq inhibit-splash-screen 1)
(setq-default cursor-type 'bar)
;; Cousine for Powerline
(set-frame-font "Monaco 12" nil t) ;; 设置字体

(setq tab-always-indent 'complete)
;; (icomplete-mode t)
(electric-pair-mode t)

(set-face-attribute 'default nil :height 120) ;; 更改字体大小

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "s-w") 'delete-window)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

; 开启全局 Company 补全
(global-company-mode 1)

(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
(define-key company-active-map (kbd "C-n") 'company-select-next)

(global-set-key (kbd "C-h C-f") 'find-function)

;; 让鼠标滚动更好用
;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
;; (setq mouse-wheel-progressive-speed nil)
