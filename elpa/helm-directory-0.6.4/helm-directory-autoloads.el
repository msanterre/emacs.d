;;; helm-directory-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "helm-directory" "helm-directory.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from helm-directory.el

(autoload 'helm-directory "helm-directory" "\
Selecting directory before select the file." t nil)

(autoload 'helm-directory-change "helm-directory" "\
Change `helm-directory-basedir' with helm interface." t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "helm-directory" '("helm-directory-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; helm-directory-autoloads.el ends here
