(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
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


(defvar auto-save-folder "~/.emacs.d/backup/")
(setq backup-directory-alist `((".*" . ,auto-save-folder))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 2    ; and how many of the old
  )

(setq split-height-threshold 0)
(setq split-width-threshold nil)

(setq auto-save-file-name-transforms
      `((".*"  "~/.emacs.d/backup/" t)))
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

(require 'yasnippet)
   (yas-reload-all)
(add-hook 'emacs-lisp-mode-hook '(lambda ()
                                   (yas-minor-mode)))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(setq default-cursor-type '(bar . 1))

(add-hook 'overwrite-mode-hook (lambda () (if overwrite-mode (setq cursor-type 'box) (setq cursor-type '(bar . 1)))))
(key-chord-mode 1)
(evil-mode 1)

