;;; early-init.el --- Early initialization

;; Mike Barker <mike@thebarkers.com>
;; December 12th, 2023

;;; Commentary:
;; This file is loaded before the package system and GUI is
;; initialized, so in it you can customize variables that affect the
;; package initialization process, such as package-enable-at-startup,
;; package-load-list, and package-user-dir.
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Early-Init-File.html
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Init-File.html#index-early-init-file
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Startup-Summary.html

;; I have added this file in an attempt to speed up Emacs' startup time.

;;; History:
;; 2023-12-12
;; * Created

;;; Code:

;; Increase GC threshold during startup to 50MB
(setq gc-cons-threshold (* 50 1000 1000))

;; Elpaca package manager requires the default package manager to be turned off
;; (setq package-enable-at-startup nil)

;; Turn off ui elements
(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(blink-cursor-mode -1)

;; After emacs has started...
;; Tell us how long it took to start and how many times the GC ran
;; Reset the GC threshold to 8KB
;;(add-hook 'emacs-startup-hook
(add-hook 'window-setup-hook
	  (lambda ()
	    (message "Emacs ready in %s with %d garbage collections."
		     (format "%.2f seconds"
			     (float-time (time-subtract after-init-time before-init-time)))
		     gcs-done)
	    (setq gc-cons-threshold (* 800 1000))))

(provide 'early-init)
;;; early-init.el ends here
