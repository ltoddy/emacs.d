(provide 'init-better-defaults)


;; 去掉声音
(setq ring-bell-function 'ignore)

;; 当外部有修改文件的时候，自动加载
(global-auto-revert-mode t)

;; 设置删除功能为，当选中一段文字之后输入一个字符就会替换掉选中的文字
(delete-selection-mode t)

;; disable auto-save and auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table
  '(("lt" "ltoddy")))  ;; 输入lt然后空格，自动生成ltoddy

