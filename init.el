(add-to-list 'load-path "~/.emacs.d/init/")
(add-to-list 'load-path "~/.emacs.d/ltoddy-plugins/")

(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(load-file custom-file)

;; Rust settings
(require 'rust-mode)
(setq rust-format-on-save t)
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
