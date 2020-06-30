(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)

;; 去掉声音
(setq ring-bell-function 'ignore)

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

(setq shell-file-name (executable-find "/bin/zsh"))

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 更改光标格式
(setq cursor-type (quote bar))

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式
;; see more: https://stackoverflow.com/questions/18172728/the-difference-between-setq-and-setq-default-in-emacs-lisp
(setq-default cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 当外部有修改文件的时候，自动加载
(global-auto-revert-mode t)

;; 更改显示字体大小 11pt
;; see more: https://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 110)
(set-default-font "Monaco")

;; 设置删除功能为，当选中一段文字之后输入一个字符就会替换掉选中的文字
(delete-selection-mode 1)

(show-paren-mode t)

;; 高亮当前行
(global-hl-line-mode 1)



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


(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table
  '(("lt" "ltoddy")))  ;; 输入lt然后空格，自动生成ltoddy

(require 'nyan-mode)
(nyan-mode t)

;; disable auto-save and auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Rust settings
(require 'rust-mode)
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("5b7c31eb904d50c470ce264318f41b3bbc85545e4359e6b7d48ee88a892b1915" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "123a8dabd1a0eff6e0c48a03dc6fb2c5e03ebc7062ba531543dfbce587e86f2a" "d1af5ef9b24d25f50f00d455bd51c1d586ede1949c5d2863bef763c60ddf703a" default)))
 '(nyan-animate-nyancat t)
 '(nyan-bar-length 35)
 '(nyan-wavy-trail t)
 '(package-selected-packages
   (quote
    (popwin markdown-mode+ gruvbox-theme racer atom-dark-theme company-lsp lsp-ui flycheck-rust atom-one-dark-theme eglot lsp-mode rust-mode smartparens nyan-mode company))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
