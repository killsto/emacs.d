(global-set-key (kbd "C-x e") 'evil-mode)
(global-set-key (kbd "C-x C-i") 
   (lambda () 
    (interactive)
    (find-file "~/.emacs.d")))



;;Overwrites 
(global-set-key (kbd "M-SPC") 'ace-jump-mode)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-k") (lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-s") 'sr-speedbar-toggle)
(global-set-key (kbd "RET") 'newline-and-indent)
