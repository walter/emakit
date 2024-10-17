;; presentation-config.el
;;
;; Install presentation mode package for easier display changes
;; in meetings, etc.
;;
;; Walter McGinnis, 2024-10-18
;;
;; http://github.com/walter/emakit

;; https://github.com/zonuexe/emacs-presentation-mode
(use-package presentation
  :defer t
  :config
  (setq presentation-default-text-scale 2.5))

;; extend this for modes switching that you want when turning presentation on
(defun my-presentation-on ()
  (global-display-line-numbers-mode 1))

(defun my-presentation-off ()
  (global-display-line-numbers-mode -1))

(add-hook 'presentation-on-hook #'my-presentation-on)
(add-hook 'presentation-off-hook #'my-presentation-off)

(provide 'presentation-config)
