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

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode) )
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode) )
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode) )
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode) )
(add-to-list 'auto-mode-alist '("\\.thor$" . enh-ruby-mode) )

(add-to-list 'auto-mode-alist '("\/\\.env" . sh-mode) )

(add-to-list 'auto-mode-alist '("/etc/nginx/sites-available/.*" . nginx-mode) )

(add-to-list 'auto-mode-alist '("\\.go$" . go-mode) )
(add-to-list 'auto-mode-alist '("Dockerfile$" . dockerfile-mode) )
