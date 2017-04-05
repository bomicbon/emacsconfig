(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (whiteboard)))
 '(custom-safe-themes
   (quote
    ("29af7993f426d7871a605776a48e38ecc22bc80dd9bff0bc65303dfe5798ac64" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "75cd4234cc08d4ccf3ddef8fb763b9e145d4e68d3c938a3502d892c72f71e007" "e3d194a55a73cb87b602d902bb21210f3970d4c07303276c073f4bdb73ba2a3b" "e5c6caa4860b1ba51dc5ad335c0c2734ea650a6098dd9652a1ab3d9aa702e185" default)))
 '(fci-rule-color "#dadada")
 '(hl-sexp-background-color "#efebe9")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#B71C1C")
     (40 . "#FF5722")
     (60 . "#FFA000")
     (80 . "#558b2f")
     (100 . "#00796b")
     (120 . "#2196f3")
     (140 . "#4527A0")
     (160 . "#B71C1C")
     (180 . "#FF5722")
     (200 . "#FFA000")
     (220 . "#558b2f")
     (240 . "#00796b")
     (260 . "#2196f3")
     (280 . "#4527A0")
     (300 . "#B71C1C")
     (320 . "#FF5722")
     (340 . "#FFA000")
     (360 . "#558b2f"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "color-231" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default")))))

;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; -------------------------------------------------------------------------

(require 'package)

(add-to-list 'package-archives
             '("melpa". "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    ein
    elpy
    flycheck
    py-autopep8))

(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; ----------------------------------------------------------

;; initial window settings
;;(setq initial-frame-alist
;;      '((background-color."brightwhite")))

;; subsequent window
;;(setq default-frame-alist
;;      '((background-color . "brightwhite")))

(setq inhibit-startup-message t) ;; hides the startup message
(global-linum-mode t) ;; enable line numbers globally

(elpy-enable) ;; enables elpy package
(elpy-use-ipython)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;; org installation
(setq load-path (cons "~/Users/urianlee/Documents/org-9.0.5/lisp" load-path))
(setq load-path (cons "~/Users/urianlee/Documents/org-9.0.5/contrib/lisp" load-path))
;; The following lines are always needed.
;; Choose your own keys.
;;(global-setkey "\C-
;; init.el ends here
