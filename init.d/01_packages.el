(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

(package-initialize)

(defun des-require-package (name)
  (unless (package-installed-p name)
    (package-install name)))


(setq des-required-packages
      '(xml-rpc
	magit
	;magithub
	;gh
	inf-ruby
	feature-mode
	yasnippet
	rspec-mode
	rhtml-mode
	scss-mode
	pt
	yaml-mode))



(dolist (package des-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))
