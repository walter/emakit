;; flycheck-config.el
;;
;; Install flycheck package for use with lsp-ui, etc.
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

(use-package flycheck)

;; make sure you have credo installed and then uncomment flycheck-credo-setup
;; (use-package flycheck-credo)

;; (eval-after-load 'flycheck
;;   '(flycheck-credo-setup))

;; (add-hook 'elixir-mode-hook 'flycheck-mode)

(provide 'flycheck-config)
