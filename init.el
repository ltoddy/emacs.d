(setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq shell-file-name (executable-find "/bin/zsh"))

(setenv "PATH" "/Users/ltoddy/.cargo/bin:/Users/ltoddy/.jenv/shims:/Users/ltoddy/.pyenv/shims:/Users/ltoddy/.pyenv/bin:/Users/ltoddy/.nvm/versions/node/v12.17.0/bin:/Users/ltoddy/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/go/bin:/Library/Apple/usr/bin:/Applications/Racket v7.7/bin")

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

(electric-indent-mode -1)

;; 更改光标格式
(setq cursor-type (quote bar))

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式
(setq cursor-type 'bar)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") (quote open-init-file))

(global-company-mode t)

;; 更改显示字体大小 16pt
;; see more: https://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 120)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
