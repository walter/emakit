;; company-config.el
;;
;; load package, configure, global hook, etc.
;;
;; Walter McGinnis, 2023-06-19
;;
;; http://github.com/walter/emakit

; company-mode (http://company-mode.github.io)
(use-package company
  :ensure t
  :config
  (global-company-mode))

(provide 'company-config)
