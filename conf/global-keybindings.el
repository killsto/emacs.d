(global-set-key (kbd "C-x e") 'evil-mode)
(global-set-key (kbd "C-x C-i") 
   (lambda () 
    (interactive)
    (find-file "~/.emacs.d")))


(global-set-key (kbd "M-'") 'er/expand-region)
(global-set-key (kbd "C-c h") 'helm-mini)
;;Overwrites 
(global-set-key (kbd "M-SPC") 'ace-jump-mode)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-k") (lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "M-;") 'er/contract-region)
(global-set-key (kbd "M-<tab>") 'company-complete)
(global-set-key (kbd "M-j") 'javadoc-lookup)
(global-set-key (kbd "C-z") 'undo)

