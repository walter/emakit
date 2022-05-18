;; appearance.el
;;
;; Set theme, turn off annoyances, etc.
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
; (scroll-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-city-lights t))

(provide 'appearance)
