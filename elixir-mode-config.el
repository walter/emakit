;; elixir-mode-config.el
;;
;; Install elixir-mode package for use with lsp-mode
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

(use-package elixir-mode
  :ensure t
  :config
  (add-hook 'elixir-mode-hook #'smartparens-mode)
  (add-hook 'elixir-mode-hook 'exunit-mode))

(provide 'elixir-mode-config)
