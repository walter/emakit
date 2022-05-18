;; magit-config.el
;;
;; load package, global key mapping, etc.
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

(use-package magit
  :ensure t
  :pin melpa
  :config
  (global-set-key (kbd "C-x g") 'magit-status))

(provide 'magit-config)
