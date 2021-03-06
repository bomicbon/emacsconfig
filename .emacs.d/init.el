;;init.el --- Emacs configuration

;; INSTALL PACKAGES
;; ----------------------------------------

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(setq package-enable-at-startup nil)(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy ;; adds the elpy package
    ))

(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; -------------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message

(global-linum-mode t) ;; enable line numbers globally
(elpy-enable)


;; init.el ends here
