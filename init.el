;; 启动emacs时，设置窗口大小
(if (not (eq window-system nil))
    (progn
      ;; top, left ... must be integer
      (add-to-list 'default-frame-alist
                   (cons 'top  (/ (x-display-pixel-height) 5)))
      (add-to-list 'default-frame-alist
                   (cons 'left (/ (x-display-pixel-width) 5)))
      (add-to-list 'default-frame-alist
                   (cons 'height (/ (* 3 (x-display-pixel-height))
                                    (* 5 (frame-char-height)))))
      (add-to-list 'default-frame-alist
                   (cons 'width (/ (* 3 (x-display-pixel-width))
                                   (* 5 (frame-char-width)))))))

;; config plugin source
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;; --------------------------------------------

(require 'cl)

(defvar ltoddy/packages '(
			  company
			  hungry-delete
			  swiper
			  counsel
			  smartparens
			  exec-path-from-shell
			  nyan-mode
			  ;; ---- Themes ----
			  monokai-theme
			  ) "Default packages")

(setq package-selected-packages ltoddy/packages)

(defun ltoddy/packages-installed-p ()
  (loop for pkg in ltoddy/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (ltoddy/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg ltoddy/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(setq shell-file-name (executable-find "/bin/zsh"))

;;(setenv "PATH" "~/.cargo/bin:~/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin")

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 更改光标格式
(setq cursor-type (quote bar))

;; 显示行号
(global-linum-mode 1)

;; 关闭自动生成备份文件
(setq make-backup-files nil)

;; 更改光标的样式
;; see more: https://stackoverflow.com/questions/18172728/the-difference-between-setq-and-setq-default-in-emacs-lisp
(setq-default cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

(global-company-mode t)

;; 更改显示字体大小 12pt
;; see more: https://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 120)

;; 设置删除功能为，当选中一段文字之后输入一个字符就会替换掉选中的文字
(delete-selection-mode 1)

(show-paren-mode t)

;; 高亮当前行
(global-hl-line-mode 1)

;; 初始化主题
(load-theme 'monokai t)

;; 以下开启插件
;; 例如你在某一行代码后面敲了很多个空格，那么你按一下删除，就空格全部删除了
(require 'hungry-delete)
(global-hungry-delete-mode t)


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


(require 'smartparens-config)
(smartparens-global-mode t)

(require 'nyan-mode)
(nyan-mode t)


;; 当系统是Mac OS的时候，初始化这个插件
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(nyan-animate-nyancat t)
 '(nyan-wavy-trail t)
 '(nyan-bar-length 35)
 '(package-selected-packages
   (quote
    (smartparens nyan-mode company))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
