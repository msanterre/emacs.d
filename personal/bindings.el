;; Fix "C-c C-k" to work for sass-mode
(global-set-key (kbd "C-c C-k") 'comment-or-uncomment-region-or-line)
(define-key (current-global-map) (kbd "C-c C-k") 'comment-or-uncomment-region-or-line)

(global-set-key (kbd "C-x g") 'magit-status)

;; @todo When opening a new window, ensure that the new window gets focus.
(global-set-key (kbd "C-x |") 'split-window-horizontally)
(global-set-key (kbd "C-x -") 'split-window-vertically)

;; For easy change between web-mode and js2 (JSX)
(global-set-key (kbd "C-c j") 'web-mode)
(global-set-key (kbd "C-c u") 'js2-mode)

(global-set-key [(control return)] 'vince-next-line)
(global-set-key (kbd "<s-return>") 'vince-next-line)

(global-set-key (kbd "C-S-k") 'vince-backward-kill-line)

(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "s-s") 'save-buffer)

;; For linux
(global-set-key (kbd "C-x w") 'kill-this-buffer)
(global-set-key (kbd "M-s") 'save-buffer)

(global-set-key [(control tab)] 'other-window)
(global-set-key [(control shift tab)] 'previous-multiframe-window)
(global-set-key [(meta tab)] 'other-window)

(global-set-key (kbd "s-k") 'vince-kill-whole-line)

;; projectile
(global-set-key (kbd "s-t") 'projectile-find-file)
(global-set-key (kbd "s-p") 'projectile-switch-project)
(global-set-key (kbd "s-f") 'projectile-ag)
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

;; guru-mode
(global-set-key (kbd "<up>") 'nil)
(global-set-key (kbd "<left>") 'nil)
(global-set-key (kbd "<right>") 'nil)
(global-set-key (kbd "<down>") 'nil)

;; Multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "s-d") 'mc/mark-next-like-this)
(global-set-key (kbd "s-D") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c s-d") 'mc/mark-all-like-this)

;; Project explorer
(global-set-key (kbd "s-j") 'project-explorer-open)

;; Windows
(global-set-key (kbd "s-[") 'previous-multiframe-window)
(global-set-key (kbd "s-]") 'other-window)
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)

;; windows-linux
(global-set-key (kbd "M-[") 'previous-multiframe-window)
(global-set-key (kbd "M-]") 'other-window)

;; C-x C-r => prelude style file rename
(global-set-key (kbd "C-x C-r") 'vince-rename-file-and-buffer)

;; C-s C-d => goes to next instance of word under cursor. Use C-s to repeat.
(define-key isearch-mode-map (kbd "C-d") 'isearch-yank-symbol)

(eval-after-load 'alchemist
  '(define-key alchemist-mode-map (kbd "s-r") 'alchemist-eval-buffer))

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-region)
