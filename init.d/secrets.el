(setq des-secrets-file
      (expand-file-name "secrets.el" des-emacs-config-dir))

(when (file-exists-p des-secrets-file)
  (load des-secrets-file))


