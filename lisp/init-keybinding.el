;; -*- lexical-binding: t -*-
(provide 'init-keybinding)

(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

(global-set-key (kbd "s-a") 'mark-whole-buffer) ;; <command> + s 全选
(global-set-key (kbd "s-s") 'save-buffer) ;; <command> + s 保存文件
(global-set-key (kbd "s-v") 'yank) ;; <command> + v 粘贴
(global-set-key (kbd "s-z") 'undo) ;; <command> + z 撤回
(global-set-key (kbd "s-x") 'kill-region) ;; <command> + x 剪切
(global-set-key (kbd "s-q") 'save-buffers-kill-emacs) ;; <command> + q 退出emacs
(global-set-key (kbd "s-w") 'delete-window) ;; <command> + w 多窗口下,关闭当前窗口

(global-set-key (kbd "C-x b") 'consult-buffer) ;; 打开consult buffer (管理buffer的)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(global-set-key (kbd "C-h C-f") 'find-function)

(global-set-key (kbd "s-c") 'kill-ring-save) ;; 
(global-set-key (kbd "s-b") 'consult-imenu)
(global-set-key (kbd "C-;") 'embark-act)
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "M-s-l") 'indent-region)

;; keyboard-quit
(global-set-key (kbd "<escape>") 'keyboard-escape-quit) ;; <control> + G 改成 esc 键
