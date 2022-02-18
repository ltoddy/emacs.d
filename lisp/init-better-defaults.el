;; -*- lexical-binding: t -*-

(provide 'init-better-defaults)

(setq mac-option-modifier 'meta ;; 将meta键设定为option键
      mac-command-modifier 'super ;; 将super键设定为command键
      mac-control-modifier 'ctrl ;; 将ctrl键设定为control键
)

(delete-selection-mode t) ;; 设置删除功能为，当选中一段文字之后输入一个字符就会替换掉选中的文字
(global-auto-revert-mode t) ;; 当外部有修改文件的时候，自动加载
(setq ring-bell-function 'ignore) ;; 去掉声音
(setq make-backup-files nil) ;; disable auto-save
(setq auto-save-default nil) ;; disable auto-backup
(setq inhibit-splash-screen 1) ;; 打开emacs时,启动窗口不打开

;; 让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(electric-pair-mode t) ;; 自动插入配对字符,例如输入左括号自动插入右括号,配对规则如下
(setq electric-pair-pairs
      '((?\" . ?\")
	(?\( . ?\))
	(?\[ . ?\])
	(?\{ . ?\})))
