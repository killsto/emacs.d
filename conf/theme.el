(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/monokai-emacs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/tango")
(load-theme 'base16-solarized t)
(when (member "Anonymous Pro" (font-family-list))
      (set-face-attribute 'default nil :font "Anonymous Pro"))




