1(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(setq mac-command-modifier 'super)

;; delete backwards with backspace
(global-set-key [?\C-h] 'delete-backward-char)
(global-set-key [?\C-x ?h] 'help-command)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(apheleia zenburn-theme editorconfig magit counsel ruby-test-mode ivy web-mode helm-ag helm-descbinds helm-directory helm-org helm-swoop ag darcula-theme go-mode helm helm-projectile projectile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;Configs
;; no startup msg
(setq inhibit-startup-message t)
(when (fboundp 'tool-bar-mode) ;; no toolbar
  (tool-bar-mode -1))
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-auto-revert-mode t) ;; revert buffer when file changed externally
(setq ring-bell-function 'ignore) ;; turn off bell

;; Projectile
(projectile-mode +1)

;; Recommended keymap prefix on macOS
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)

(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'ivy)
(setq projectile-project-search-path '("~/projects/personal" "~/projects/chime"))

;; Ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

;; Format on save
(apheleia-global-mode +1)


;;;; Bindings
;; Project explorer
(global-set-key (kbd "s-j") 'project-explorer-open)
;; Windows
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-[") 'previous-multiframe-window)
(global-set-key (kbd "s-]") 'other-window)
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)
;; Magit
(global-set-key (kbd "C-x g") 'magit-status)


;;;; Modes
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)


;;;; Appearance
(load-theme 'zenburn t)
(set-face-attribute 'default nil :height 140)
(set-face-attribute 'default nil :font "Hack")


(require 'cl-lib)
(setq-default header-line-format
      '((:eval
         (let ((frames (frame-list)))
           (mapconcat
            'identity
            (cl-loop for frame in frames
                     as map = (make-sparse-keymap)
                     do (define-key
                          map
                          [header-line mouse-1]
                          `(lambda () (interactive) (select-frame-set-input-focus ,frame)))
                     if (eq frame (selected-frame))
                     collect (propertize
                              (frame-parameter frame 'name)
                              'face '(:foreground "#B8bb26")
                              'keymap map)
                     else collect (propertize
                                   (frame-parameter frame 'name)
                                   'face '(:foreground "#FB4933")
                                   'keymap map))
            " | ")))))
