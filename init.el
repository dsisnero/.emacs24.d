;; Directories and file names
(setq des-emacs-init-file (or load-file-name buffer-file-name))
(setq des-emacs-config-dir
      (file-name-directory des-emacs-init-file))
(setq user-emacs-directory des-emacs-config-dir)
(setq des-elisp-dir (expand-file-name "elisp" des-emacs-config-dir))
(setq des-elisp-external-dir
      (expand-file-name "external" des-elisp-dir))
(setq des-init-dir
      (expand-file-name "init.d" des-emacs-config-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p des-init-dir)
    (dolist (file (directory-files des-init-dir t "\\.el$"))
      (load file)))

;; Set up 'custom' system
(setq custom-file (expand-file-name "emacs-customizations.el" des-emacs-config-dir))
(load custom-file)


