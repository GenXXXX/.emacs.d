;; ========================================
;; AucTeX settings
;; ========================================
(add-to-list 'load-path "~/.emacs.d/elpa/site-start.d")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(if (string-equal system-type "windows-nt")
    (require 'tex-mik))
 
(setq TeX-auto-save t)
(setq TeX-parse-self t)
;;(reftex-moede t)
 
(add-hook 'LaTeX-mode-hook 
          (lambda()
            (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
            (setq TeX-command-default "XeLaTeX")
            (setq TeX-save-query nil )
            (setq TeX-show-compilation t)
            ))
 
(add-hook 'latex-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-auctex t)
 
(setq-default TeX-master nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(custom-safe-themes
   (quote
    ("d409bcd828a041ca8c28433e26d1f8a8e2f0c29c12c861db239845f715a9ea97" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; set font size
(set-face-attribute 'default nil :height 140)

;; close the default opening tab
(setq inhibit-startup-message t)

;; set line number
(global-linum-mode 1) ; always show line numbers
(setq linum-format "%d ") ;set format

;; load theme: monokai
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;for markdown-mode
(add-to-list 'load-path "~/.emacs.d/lisp/")

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; pandoc for preview markdown
(custom-set-variables
 '(markdown-command "/usr/bin/pandoc"))

;;pig latin mode
(load-file "~/.emacs.d/lisp/piglatin.el")

;; kdb+ q-mode
(load-file "~/.emacs.d/lisp/q-mode.el")

;; scala mode
(load-file "~/.emacs.d/lisp/scala-mode.el")

;; melpa package manager
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; auto-complete configuration
(package-initialize)
(ac-config-default)
(global-auto-complete-mode t)
(put 'upcase-region 'disabled nil)
