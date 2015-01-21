(key-chord-define evil-insert-state-map "00" 'evil-normal-state)
(key-chord-define evil-normal-state-map "00" 'ace-window)
(define-key evil-normal-state-map (kbd "<SPC> b") 'helm-bookmarks)
(define-key evil-normal-state-map (kbd "<tab>") 'indent-for-tab-command)

(define-key evil-ex-map "b" 'helm-buffers-list)
(define-key evil-ex-map "e" 'find-file)
(define-key evil-ex-map "psa" 'projectile-ack)

(eval-after-load "evil-maps"
  (dolist (map '(evil-motion-state-map
                 evil-insert-state-map
                 evil-emacs-state-map))
    (define-key (eval map) "\C-o" nil)))
