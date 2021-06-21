;; init.el --- My emacs initialization
;; Mike Barker
;; February 12th, 2021

;; My emacs configuration file
(defvar user/emacs-config-file (concat user-emacs-directory "emacs-config.org"))

;; Load my emacs config
(org-babel-load-file user/emacs-config-file)
