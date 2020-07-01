(provide 'init-packages)

;; 更换源
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;; --------------------------------------------

(defvar ltoddy/packages '(
			  company
			  hungry-delete
			  swiper
			  counsel
			  smartparens
			  exec-path-from-shell
			  nyan-mode
			  lsp-mode
			  eglot
			  flycheck-rust
			  lsp-ui
			  company-lsp
			  rust-mode
			  popwin
			  ;; ---- Themes ---ruvbox-theme
			  gruvbox-theme
			  )
  "Default packages")

(setq package-selected-packages ltoddy/packages)

(require 'cl)

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

;; 当系统是Mac OS的时候，初始化这个插件
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;---------------------------------------------------------------

;; use packages

(global-company-mode t)

;; 以下开启插件
;; 例如你在某一行代码后面敲了很多个空格，那么你按一下删除，就空格全部删除了
(require 'hungry-delete)
(global-hungry-delete-mode t)

(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(load-theme 'gruvbox-dark-soft t)

(require 'popwin)
(popwin-mode t)

