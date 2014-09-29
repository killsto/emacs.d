(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-linum-mode 1)
(require 'package)
   (add-to-list 'package-archives
      '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(setq inhibit-splash-screen t)
(require 'uniquify)
   (setq uniquify-buffer-name-style 'forward)
(load "ace-jump-mode")
(require 'magit)
(require 'sr-speedbar)
   (setq sr-speedbar-right-side nil)
(require 'projectile)
   (require 'helm-projectile)
   (projectile-global-mode 1)
(require 'evil)
(require 'ldap-mode)
(require 'rainbow-identifiers)
(add-hook 'prog-mode-hook 'rainbow-identifiers-mode)

(defvar auto-save-folder "~/.emacs.d/backup/")
(setq backup-directory-alist `((".*" . ,auto-save-folder))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 2    ; and how many of the old
  )

(setq auto-save-file-name-transforms
      `((".*"  ,auto-save-folder t) ))
(require 'helm-config)
  (helm-mode)
(require 'expand-region)
(require 'ggtags)
  (ggtags-mode)
(require 'company)
(global-company-mode)

(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'java-basic-offset 'tab-width)

