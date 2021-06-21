;; init.el --- My emacs initialization
;; Mike Barker
;; February 12th, 2021

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


;; Load org package
(require 'org)


;; Load our emacs config
(org-babel-load-file "~/.emacs.d/emacs-config.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
