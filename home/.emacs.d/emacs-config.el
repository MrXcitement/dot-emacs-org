(load (concat user-emacs-directory "custom.el"))

(defun user/open-emacs-config ()
  (interactive)
  (find-file user/emacs-config-file))
;; I wanted something with '~'
(global-set-key (kbd "C-~") 'user/open-emacs-config)

(custom-set-variables
 '(inhibit-startup-screen t))

;; Add MELPA package server
(require 'package)

(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)

(unless package-archive-contents
  (package-refresh-contents))

(package-initialize)

;; Install package use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(use-package evil
  :ensure t
  :config
  (evil-mode 1))
