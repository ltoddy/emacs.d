;; -*- lexical-binding: t -*-
(provide 'init-better-defaults)

(setq ring-bell-function 'ignore) ;; 去掉声音
(global-auto-revert-mode t) ;; 当外部有修改文件的时候，自动加载
(delete-selection-mode t) ;; 设置删除功能为，当选中一段文字之后输入一个字符就会替换掉选中的文字
(setq make-backup-files nil) ;; disable auto-save
(setq auto-save-default nil) ;; disable auto-backup

