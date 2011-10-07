(setq des-emacs-init-file load-file-name)
(setq des-emacs-config-dir
      (file-name-directory des-emacs-init-file))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" des-emacs-config-dir))
(load custom-file)

(setq user-emacs-directory des-emacs-config-dir)

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))


(setq des-elisp-dir
      (expand-file-name "elisp" des-emacs-config-dir))

(setq des-elisp-external-dir
      (expand-file-name "external" des-elisp-dir))



					; Add external projects to load path
(dolist (project (directory-files des-elisp-external-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))


(require 'gist)


(setq gist-authenticate-function 'gist-basic-authentication)

(setq des-secrets-file
      (expand-file-name "secrets.el" des-emacs-config-dir))


(when (file-exists-p des-secrets-file)
  (load des-secrets-file))

					; Keyboard Bindings
(global-set-key (kbd "<f8>") 'gist-region-or-buffer)


(add-hook 'des-code-modes-hook
          (lambda () (linum-mode 1)))

(add-hook 'ruby-mode-hook
          (lambda () (run-hooks 'des-code-modes-hook)))
