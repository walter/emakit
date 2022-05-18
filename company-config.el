;; company-config.el
;;
;; load package, configure, global hook, etc.
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

; company-mode (http://company-mode.github.io)
(use-package company
  :ensure t
  :config
  (global-company-mode)
  (add-to-list 'company-backends 'company-emoji)
  (add-to-list 'company-backends 'company-web-html))

(provide 'company-config)
