(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai-emacs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/tango")
(load-theme 'monokai t)
(when (member "Ubuntu Mono" (font-family-list))
  (set-face-attribute 'default t :font "Ubuntu Mono"))






