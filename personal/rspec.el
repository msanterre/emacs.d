;;;; rspec-mode settings

;; Some custom binding for rspec-mode. Note that the resulting
;; command are "C-i" as per the translation at the end.
;;
;; See also:
;;
;;     http://barelyenough.org/projects/rspec-mode/
;;     https://github.com/pezra/rspec-mode/
;;
(global-set-key (kbd "s-i s-i") 'rspec-rerun)                  ;; Rerun
(global-set-key (kbd "s-i C-f") 'rspec-verify)                 ;; File
(global-set-key (kbd "s-i C-a") 'rspec-verify-all)             ;; All
(global-set-key (kbd "s-i C-t") 'rspec-toggle-spec-and-target) ;; Toggle
(global-set-key (kbd "s-i C-w") 'rspec-toggle-spec-and-target-find-example)
(global-set-key (kbd "s-i C-e") 'rspec-verify-single)          ;; Example
(global-set-key (kbd "s-i C-m") 'rspec-toggle-fail-fast-mode)  ;; Mode

;; http://stackoverflow.com/a/4513683
(keyboard-translate ?\C-i ?\s-i)

;; Auto scroll compilation output
(setq compilation-scroll-output nil)


(defun rspec-toggle-fail-fast-mode ()
  (interactive)
  (if (string-equal "rspec" rspec-spec-command)
      (setq rspec-spec-command "rspec --fail-fast")
    (setq rspec-spec-command "rspec")
    )
  (message rspec-spec-command))
