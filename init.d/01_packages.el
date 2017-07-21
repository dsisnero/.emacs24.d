(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

(package-initialize); activate al the packages


; fetch the list of packages available
(unless package-archive-contents 
  (package-refresh-contents))

(setq package-list '(
		     adoc-mode
		     feature-mode
		     helm
		     helm-ag
		     helm-projectile		     
		     inf-ruby
		     magit	       
		     projectile
		     pt
		     puppet-mode
		     rhtml-mode
		     ruby-test-mode
		     rspec-mode		     
		     scss-mode		     
		     seeing-is-believing
		     sparql-mode
		     ttl-mode
		     yasnippet
		     yaml-mode
		     xml-rpc
		     ))

;; install the missing packages
(dolist (package package-list) ; install the missing packages
  (unless (package-installed-p package)
    (package-install package)))
