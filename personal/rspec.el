;;;; rspec-mode settings

;; Some custom binding for rspec-mode. Note that the resulting
;; command are "C-i" as per the translation at the end.
;;
;; See also:
;;
;;     http://barelyenough.org/projects/rspec-mode/
;;     https://github.com/pezra/rspec-mode/
;;
(global-set-key (kbd "s-i s-i") 'rspec-verify)                 ;; default/easy to run single file
(global-set-key (kbd "s-i C-a") 'rspec-verify-all)             ;; All
(global-set-key (kbd "s-i C-t") 'rspec-toggle-spec-and-target) ;; Toggle
(global-set-key (kbd "s-i C-e") 'rspec-verify-single)          ;; Example

;; http://stackoverflow.com/a/4513683
(keyboard-translate ?\C-i ?\s-i)

;; Auto scroll compilation output
(setq compilation-scroll-output t)
