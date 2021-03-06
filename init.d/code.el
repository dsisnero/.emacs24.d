(setq des-code-modes-hook nil)

;; add projectile
(require 'projectile)
(projectile-global-mode)


;; (autoload 'fci-mode "fill-column-indicator"
;;   "Toggle fill column indicator"
;;   t)

;; Line numbers
;;(linum-mode 1)
(add-hook 'prog-mode-hook (lambda () (linum-mode 1)))

(add-hook 'des-code-modes-hook
	  (lambda () (linum-mode 1)))

;; Unshow/ Show whitespace
(add-hook 'des-code-modes-hook
	  (lambda () (whitespace-mode 0)))

;; Truncate lines
(add-hook 'des-code-modes-hook
	  (lambda () (setq truncate-lines t)))

;; Clean up whitespace on save
(add-hook 'des-code-modes-hook
          (lambda ()
            (add-hook 'before-save-hook 'whitespace-cleanup nil t)))

;; Show an indicator of the fill column
;;(require 'fill-column-indicator)
;;(add-hook 'prog-mode-hook (lambda () (fci-mode 1)))
;;(add-hook 'des-code-modes-hook
;(lambda () (fci-mode 1)))  

;;(add-hook 'des-code-modes-hook
;;         (lambda () (show-paren-mode t)))


(add-hook 'des-code-modes-hook
	  (lambda ()(column-number-mode t)))     
