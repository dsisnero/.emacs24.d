; Keyboard Bindings
;; I accidentally hit the following keys WAY too often.
;;(global-unset-key (kbd "C-x C-c")) 
;;(global-unset-key (kbd "C-x C-z"))


(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "<f8>") 'gist-region-or-buffer)
(global-set-key (kbd "<f9>") 'org2blog/wp-new-entry)
(global-set-key (kbd "S-<f9>") 'org2blog/wp-post-buffer)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "s-f") #'helm-projectile-ag)
(global-set-key (kbd "s-t") #'helm-projectifle-finde-file-dwim)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z


;;(global-set-key (kbd "C-c-p-p") #'helm-projectile-switch-projct)
