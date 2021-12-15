;;; apheleia-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "apheleia" "apheleia.el" (0 0 0 0))
;;; Generated autoloads from apheleia.el

(autoload 'apheleia-format-buffer "apheleia" "\
Run code formatter asynchronously on current buffer, preserving point.

Interactively, run the currently configured formatter (see
`apheleia-formatter' and `apheleia-mode-alist'), or prompt from
`apheleia-formatters' if there is none configured for the current
buffer. With a prefix argument, prompt always.

In Lisp code, COMMAND is similar to what you pass to
`make-process', except as follows. Normally, the contents of the
current buffer are passed to the command on stdin, and the output
is read from stdout. However, if you use the symbol `file' as one
of the elements of COMMAND, then the filename of the current
buffer is substituted for it. (Use `filepath' instead of `file'
if you need the filename of the current buffer, but you still
want its contents to be passed on stdin.) If you instead use the
symbol `input' as one of the elements of COMMAND, then the
contents of the current buffer are written to a temporary file
and its name is substituted for `input'. Also, if you use the
symbol `output' as one of the elements of COMMAND, then it is
substituted with the name of a temporary file. In that case, it
is expected that the command writes to that file, and the file is
then read into an Emacs buffer. Finally, if you use the symbol
`npx' as one of the elements of COMMAND, then the first string
element of COMMAND is resolved inside node_modules/.bin if such a
directory exists anywhere above the current `default-directory'.

In any case, after the formatter finishes running, the diff
utility is invoked to determine what changes it made. That diff
is then used to apply the formatter's changes to the current
buffer without moving point or changing the scroll position in
any window displaying the buffer. If the buffer has been modified
since the formatter started running, however, the operation is
aborted.

If the formatter actually finishes running and the buffer is
successfully updated (even if the formatter has not made any
changes), CALLBACK, if provided, is invoked with no arguments.

\(fn COMMAND &optional CALLBACK)" t nil)

(autoload 'apheleia--format-after-save "apheleia" "\
Run code formatter for current buffer if any configured, then save." nil nil)

(define-minor-mode apheleia-mode "\
Minor mode for reformatting code on save without moving point.
It is customized by means of the variables `apheleia-mode-alist'
and `apheleia-formatters'." :lighter " Apheleia" (if apheleia-mode (add-hook 'after-save-hook #'apheleia--format-after-save nil 'local) (remove-hook 'after-save-hook #'apheleia--format-after-save 'local)))

(define-globalized-minor-mode apheleia-global-mode apheleia-mode apheleia-mode)

(put 'apheleia-mode 'safe-local-variable #'booleanp)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "apheleia" '("apheleia-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; apheleia-autoloads.el ends here
