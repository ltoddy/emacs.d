(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

;; Rust settings
(require 'rust-mode)
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

