(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/personal/")
(load "configs.el")
(load "theme.el")
(load "functions.el")
(load "search.el")
(load "modes.el")
(load "bindings.el")
(load "hooks.el")
(load "snippets.el")

(load-theme 'zenburn t)
