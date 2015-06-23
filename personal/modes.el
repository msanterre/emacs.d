(require 'rhtml-mode)
(require 'haml-mode)
(require 'coffee-mode)
(require 'yaml-mode)
(require 'scss-mode)
(require 'sass-mode)
(require 'nginx-mode)
(require 'dockerfile-mode)

;; Auto setup of modes based on extensions
(add-to-list 'auto-mode-alist '("\\.xhtml$" . rhtml-mode) )
(add-to-list 'auto-mode-alist '("\\.html$" . rhtml-mode) )
(add-to-list 'auto-mode-alist '("\\.eco$" . rhtml-mode) )
(add-to-list 'auto-mode-alist '("\\.ejs$" . rhtml-mode) )
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode) )
(add-to-list 'auto-mode-alist '("\\.html\\.erb$" . rhtml-mode) )

(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode) )
(add-to-list 'auto-mode-alist '("\\.hamlc$" . haml-mode) )

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode) )

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode) )
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode) )
(add-to-list 'auto-mode-alist '("\\.styl$" . scss-mode) )
(add-to-list 'auto-mode-alist '("\\.less$" . scss-mode) )

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode) )
(add-to-list 'auto-mode-alist '("\\.coffee\\.erb$" . coffee-mode) )
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode) )

(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode) )

(add-to-list 'auto-mode-alist '("\\.yml\\.?" . yaml-mode) )

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode) )
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode) )
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode) )
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode) )
(add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode) )

(add-to-list 'auto-mode-alist '("\/\\.env" . sh-mode) )

(add-to-list 'auto-mode-alist '("/etc/nginx/sites-available/.*" . nginx-mode) )

(add-to-list 'auto-mode-alist '("\\.go$" . go-mode) )
(add-to-list 'auto-mode-alist '("Dockerfile$" . dockerfile-mode) )
