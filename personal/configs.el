(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

;; no startup msg
(setq inhibit-startup-message t)


;; no toolbar in GUI mode
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))


;; Disable blinking cursor...
(blink-cursor-mode -1)

;; Enable ido with a config similar to prelude
(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)
(ido-mode +1)
(ido-ubiquitous-mode +1)
(flx-ido-mode +1) ;; smarter fuzzy matching for ido
(setq ido-use-faces nil) ;; disable ido faces to see flx highlights

;; Turn off pinging / find file at point:
;; https://github.com/technomancy/emacs-starter-kit/issues/39
(setq ido-use-filename-at-point nil)



;; Enable projectile
(projectile-global-mode)
(setq projectile-indexing-method 'alien)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)

;; Strip trailing whitespace before saving files.
(add-hook 'before-save-hook 'delete-trailing-whitespace)


;; Enable shift+arrows to switch windows.
(windmove-default-keybindings)


;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)


;; Turn off bell completely.
(setq ring-bell-function 'ignore)


;; Disable scss compilation on save.
(setq scss-compile-at-save nil)


;; Disable default tab mode.
(setq-default indent-tabs-mode nil)


;; Set default tab width
(setq-default tab-width 2)
(setq nginx-indent-level 2)
(setq css-indent-level 2)
(setq css-indent-offset 2)
(setq scss-indent-level 2)
(setq ruby-indent-level 2)
(setq js-indent-level 2)
(setq web-mode-indent-style 2)

;; highlight the current line
(global-hl-line-mode +1)


;; Shorten mode names
(require 'diminish)
(diminish 'projectile-mode "Prjl")

;; Fuck off CSS mode
(add-hook 'css-mode-hook
          (lambda ()
            (linum-mode 1)))
;; mode line settings
(line-number-mode t)
(column-number-mode t)


;; Smaller fringe (left and right side gutters)
(if (fboundp 'fringe-mode)
    (fringe-mode 4))


;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)



;; meaningful names for buffers with the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers


;; @todo saveplace (https://github.com/bbatsov/prelude/blob/b9000702b2ac8216a8bfeea645fde6bb0c1fc7bc/core/prelude-editor.el#L130)

;; @todo smartparens (https://github.com/bbatsov/prelude/blob/b9000702b2ac8216a8bfeea645fde6bb0c1fc7bc/core/prelude-editor.el#L105)

;; @todo bracket auto completion


;; Move auto-saved files to a temp directory.
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
  (make-directory user-temporary-file-directory t)
  (setq backup-by-copying t)
  (setq backup-directory-alist
        `(("." . ,user-temporary-file-directory)
                (,tramp-file-name-regexp nil)))
                (setq auto-save-list-file-prefix
                      (concat user-temporary-file-directory ".auto-saves-"))
                      (setq auto-save-file-name-transforms
                            `((".*" ,user-temporary-file-directory t)))

(provide 'configs)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(setq require-final-newline 't)
(setq browse-url-browser-function 'browse-url-generic
           browse-url-generic-program "chrome"
           browse-url-generic-args '("--new-tab"))

(setq jsx-indent-level 2)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/.cask/24.5.1/elpa/auto-complete-20150618.1949/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)

;; For rspec-mode and zsh/rvm
(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))

(ad-activate 'rspec-compile)

(add-to-list 'exec-path "/Users/maxime.santerre/go/bin")

; Go mode
(defun my-go-mode-hook ()
  ; Call gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  ; Autocomplete
  (auto-complete-mode 1)
  )

(add-hook 'go-mode-hook 'my-go-mode-hook)
(with-eval-after-load 'go-mode
  (require 'go-autocomplete))
