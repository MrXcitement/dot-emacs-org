;;; init.el --- My Emacs initialization file

;; Mike Barker <mike@thebarkers.com>
;; December 24th, 2023

;;; Commentary:
;; Initialize the Emacs editor by using org-babel to load the
;; config.org file and create a config.el file that contains the
;; configuration.

;;; History
;; 2023-12-24
;; * Initial creation

;;; Code:

;; Emacs version earlier than v26
(let ((minver 26))
  (when (< emacs-major-version minver)
    (error "Your Emacs v%s is too old -- this config requires v%s or higher" emacs-version minver)))

;; Emacs version earlier than v27
(let ((minver 27))
  (when (< emacs-major-version minver)
    (progn
      (message "Your Emacs v%s is old -- this configuration may not work as expected since Emacs is < v%s." emacs-version minver)
      (load-file "early-init.el"))))

;; Load the configuration in the config.org file
(org-babel-load-file
 (expand-file-name
 "config.org"
  user-emacs-directory))

(provide 'init)
;;; init.el ends here
