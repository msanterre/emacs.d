(require 'cask "$HOME/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/.emacs.d/personal/")
(load "configs.el")
(load "functions.el")
(load "search.el")
(load "modes.el")
(load "bindings.el")
(load "hooks.el")
(load "snippets.el")
(load "theme.el")
(load "editorconfig")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("282606e51ef2811142af5068bd6694b7cf643b27d63666868bc97d04422318c1" default)))
 '(enh-ruby-deep-indent-paren nil)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(web-mode-attr-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/emacs-livedown"))
;; (require 'livedown)
