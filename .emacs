; set font size
(set-face-attribute 'default nil :height 170)

;; set background color
(set-background-color "#272822")
(set-foreground-color "#F8F8F2")

;; close the default opening tab
(setq inhibit-startup-message t)

;; highlight current line
(global-hl-line-mode +1)

;; open emacs with full screen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; set line number
(global-linum-mode 1) ; always show line numbers
(setq linum-format "%d ") ;set format

;; load theme: monokai
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
; (load-theme 'monokai t)
(load-theme 'flatland t)

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
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-command "/usr/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (all-the-icons projectile neotree highlight-symbol ensime auto-complete auctex))))

;; for markdown preview using pandoc


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

;; path for macbook
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"))
    (setq exec-path (append exec-path '("/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin")))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; close startup message of neotree
(setq ensime-startup-notification nil)

;; projectile default open
(projectile-global-mode)
;; neotree-projectile
(defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))

(global-set-key [f5] 'neotree-project-dir)

;; switch to previous buffer
(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))
(global-set-key (kbd "C-c b") 'switch-to-previous-buffer)
