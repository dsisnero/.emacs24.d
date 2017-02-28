(autoload 'ruby-mode "ruby-mode" "Ruby Mode Loading" t)

(add-to-list 'auto-mode-alist '("\\Capfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

;; seeing is believing
(setq seeing-is-believing-prefix "C-.")
(add-hook 'ruby-mode-hook 'seeing-is-believing)
(require 'seeing-is-believing)


;; (defun ruby-mode-hook ()
;;       '((setq ruby-deep-arglist t)
;; 	(setq ruby-deep-indent-paren nil)
;; 	(setq c-tab-always-indent nil)
;; 	(local-set-key (kbd "RET") 'newline-and-indent)
;; 	)
;; )


(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

;; ruby test mode
(require 'ruby-test-mode)
(add-hook 'ruby-mode-hook 'ruby-test-mode)

(add-hook 'ruby-mode-hook  '(lambda () (run-hooks 'des-code-modes-hook)))
;;(require 'inf-ruby)
;;(require 'ruby-compilation)

(defun rhtml-mode-hook ()
  (autoload 'rhtml-mode "rhtml-mode" nil t
    (add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
    (add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))
    (add-hook 'rhtml-mode '(lambda ()
			     (define-key rhtml-mode-map (kbd "M-s") 'save-buffer)))))


(defun yaml-mode-hook ()
  (autoload 'yaml-mode "yaml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode)))

(defun css-mode-hook ()
  (autoload 'css-mode "css-mode" nil t)
  (add-hook 'css-mode-hook '(lambda ()
			      (setq css-indent-level 2)
			      (setq css-indent-offset 2))))

