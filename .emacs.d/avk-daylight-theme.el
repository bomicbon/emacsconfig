(deftheme avk-daylight
  "Created 2016-09-29.")

(custom-theme-set-faces
 'avk-daylight
 '(comint-highlight-input ((t (:inherit font-lock-keyword-face))))
 '(compilation-error ((t (:foreground "red3" :weight ultra-bold))))
 '(compilation-line-number ((t (:foreground "OrangeRed3" :weight bold))))
 '(cursor ((t (:background "#ff1493"))))
 '(custom-state ((t (:foreground "deep pink"))))
 '(custom-variable-tag ((((class color) (background dark)) (:inherit variable-pitch :foreground "DarkOrange" :weight bold)) (t (:foreground "magenta4" :weight bold))))
 '(flycheck-error ((t (:background "PaleVioletRed1" :underline (:color "Red1" :style wave)))))
 '(flymake-errline ((t (:foreground "tomato" :inverse-video t))))
 '(flymake-warnline ((t (:underline (:color "dark orange" :style wave)))))
 '(font-lock-comment-face ((t (:foreground "gray55"))))
 '(font-lock-function-name-face ((t (:foreground nil :background "khaki2" :box (:line-width 2 :color "gray94" :style released-button) :weight normal))))
 '(font-lock-keyword-face ((t (:foreground "maroon" :weight bold))))
 '(font-lock-string-face ((t (:foreground "dark blue" :slant italic))))
 '(font-lock-warning-face ((t (:foreground "dark orange"))))
 '(highlight ((t (:background "green yellow"))))
 '(ido-first-match ((t (:foreground "medium blue" :weight bold))))
 '(ido-indicator ((t (:foreground "red2" :width condensed))))
 '(ido-only-match ((t (:foreground "forest green" :weight bold))))
 '(ido-subdir ((((min-colors 88) (class color)) (:weight bold :foreground nil))))
 '(isearch ((t (:background "dark orange" :foreground "black"))))
 '(lazy-highlight ((t (:background "chartreuse"))))
 '(linum ((t (:background "gray92" :foreground "#4d4d7d" :family "Neep" :underline nil :slant italic :weight normal))))
 '(match ((nil (:inherit region :underline t))))
 '(minibuffer-prompt ((t (:foreground "dark cyan" :weight bold))))
 '(mode-line ((t (:background "#d0e5cc" :foreground "black" :inverse-video nil :slant normal :weight normal :width condensed :family "ubuntu condensed" :box (:line-width -1 :color nil :style released-button)))))
 '(mode-line-inactive ((t (:weight light :box (:line-width -1 :color "grey75" :style nil) :foreground "black" :background "SlateGray2" :inherit (mode-line)))))
 '(region ((t (:background "OliveDrab1" :foreground "black"))))
 '(secondary-selection ((t (:background "forest green" :foreground "white"))))
 '(shadow ((t (:foreground "RosyBrown4"))))
 '(show-paren-match ((t (:background "DeepSkyBlue1" :foreground "white"))))
 '(show-paren-mismatch ((t (:background "red" :foreground "white"))))
 '(tooltip ((((class color)) (:inherit variable-pitch :background "IndianRed1" :foreground "black"))))
 '(trailing-whitespace ((t (:background "#dae8ff"))))
 '(error ((t (:foreground "red"))))
 '(widget-button ((t (:foreground "dark blue" :weight bold :underline (:color "gray75" :style line)))))
 '(fringe ((t (:background "#add8e6"))))
 '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal)))))

(provide-theme 'avk-daylight)
