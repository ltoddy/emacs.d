;;; Prvoide a face for parens in lisp mode
(provide 'parenface)

(defvar paren-face 'paren-face)

(defface paren-face
  '((((class color))
     (:foreground "DimGray")))
  "Face for displaying a paren."
  :group 'faces)

(defmacro paren-face-add-support (keywords)
  "Generate a lambda expression for use in a hook."
  `(lambda ()
     (let* ((regexp "(\\|)\\|\\[\\|\\]\\|{\\|}")
            (match (assoc regexp ,keywords)))
       (unless (eq (cdr match) paren-face)
         (setq ,keywords (cons (cons regexp paren-face) ,keywords))))))

(add-hook 'scheme-mode-hook           (paren-face-add-support scheme-font-lock-keywords-2))
(add-hook 'lisp-mode-hook             (paren-face-add-support lisp-font-lock-keywords-2))
(add-hook 'emacs-lisp-mode-hook       (paren-face-add-support lisp-font-lock-keywords-2))
(add-hook 'lisp-interaction-mode-hook (paren-face-add-support lisp-font-lock-keywords-2))
