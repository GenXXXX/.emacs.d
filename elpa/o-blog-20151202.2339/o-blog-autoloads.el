;;; o-blog-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "o-blog" "o-blog.el" (0 0 0 0))
;;; Generated autoloads from o-blog.el

(autoload 'o-blog-publish "o-blog" "\
Publish FILE using o-blog BACKEND.

If FILE is not provided, try to guess FILE and BACKEND from
current buffer.

\(fn &optional FILE BACKEND)" t nil)

(autoload 'o-blog-publish-async "o-blog" "\
Publish FILE synchronously using BACKEND.

\(fn FILE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog" '("o-blog-" "ob:parse-blog-config")))

;;;***

;;;### (autoloads nil "o-blog-backend" "o-blog-backend.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from o-blog-backend.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-backend" '("ob-process-index" "ob:")))

;;;***

;;;### (autoloads nil "o-blog-backend-markdown" "o-blog-backend-markdown.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from o-blog-backend-markdown.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-backend-markdown" '("ob:")))

;;;***

;;;### (autoloads nil "o-blog-backend-org" "o-blog-backend-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from o-blog-backend-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-backend-org" '("ob:")))

;;;***

;;;### (autoloads nil "o-blog-entry" "o-blog-entry.el" (0 0 0 0))
;;; Generated autoloads from o-blog-entry.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-entry" '("ob:")))

;;;***

;;;### (autoloads nil "o-blog-framework" "o-blog-framework.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from o-blog-framework.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-framework" '("ob:")))

;;;***

;;;### (autoloads nil "o-blog-i18n" "o-blog-i18n.el" (0 0 0 0))
;;; Generated autoloads from o-blog-i18n.el

(autoload 'ob:gettext "o-blog-i18n" "\
Return part of `o-blog-i18n' that matches TEXT in LANG.

If LANG is not defined, the blog \"#+LANGUAGE:\" header would be
used. If not found, English (en) is used as a fall-back.

\(fn TEXT &optional LANG)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-i18n" '("o-blog-i18n")))

;;;***

;;;### (autoloads nil "o-blog-obsolete" "o-blog-obsolete.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from o-blog-obsolete.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-obsolete" '("ob:")))

;;;***

;;;### (autoloads nil "o-blog-tag" "o-blog-tag.el" (0 0 0 0))
;;; Generated autoloads from o-blog-tag.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-tag" '("ob:")))

;;;***

;;;### (autoloads nil "o-blog-utils" "o-blog-utils.el" (0 0 0 0))
;;; Generated autoloads from o-blog-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "o-blog-utils" '("ob-do-copy" "ob:")))

;;;***

;;;### (autoloads nil nil ("o-blog-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; o-blog-autoloads.el ends here
