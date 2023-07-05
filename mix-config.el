;; mix-config.el
;;
;; Install mix minor mode package for use with elixir
;;
;; Walter McGinnis, 2023-06-20
;;
;; http://github.com/walter/emakit

;; https://github.com/ayrat555/mix.el
(use-package mix
  :ensure t
  :after elixir-ts-mode
  :config
  (add-hook 'elixir-ts-mode-hook 'mix-minor-mode))

(setq compilation-scroll-output t)

(provide 'mix-config)
