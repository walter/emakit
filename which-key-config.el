;; which-key-config.el
;;
;; load package, configure, etc.
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

;; see https://github.com/justbur/emacs-which-key
;; be able to discover keybindings
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(provide 'which-key-config)
