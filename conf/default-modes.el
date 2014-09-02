(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-linum-mode 1)
(ido-mode 1)
(setq ido-use-virtual-buffers t)
(setq inhibit-splash-screen t)
(require 'uniquify)
   (setq uniquify-buffer-name-style 'forward)
(load "ace-jump-mode")
(require 'sr-speedbar)
   (setq sr-speedbar-right-side nil)
(require 'projectile)
(projectile-global-mode 1)
(require 'evil)
(require 'ldap-mode)

(require 'flx-ido)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
(require 'rainbow-identifiers)
(add-hook 'prog-mode-hook 'rainbow-identifiers-mode)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )
