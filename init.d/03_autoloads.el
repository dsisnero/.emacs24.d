(autoload 'ttl-mode "ttl-mode" "TTL Mode Loading" t)
(autoload 'sparql-mode "sparql-mode" "Sparql Mode Loading" t)

(add-to-list 'auto-mode-alist '("\\.rq\\'" . sparql-mode))

(add-to-list 'auto-mode-alist '("\\.ttl\\'" . ttl-mode))
