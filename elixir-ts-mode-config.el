;; elixir-ts-mode-config.el
;;
;; Install elixir-ts-mode package for use with lsp-mode
;;
;; Walter McGinnis, 2023-06-19
;;
;; http://github.com/walter/emakit

(require 'treesit)

;; assumes expert command (elixir lsp) is within path
(use-package elixir-ts-mode
  :ensure t
  :mode (("\\.ex\\'" . elixir-ts-mode)
         ("\\.exs\\'" . elixir-ts-mode)
         ("\\mix.lock\\'" . elixir-ts-mode))
  :hook
  (
   (elixir-ts-mode . flycheck-mode)
   (elixir-ts-mode . smartparens-mode)
   (elixir-ts-mode . mix-minor-mode)
   (elixir-ts-mode . exunit-mode)
   )
  :custom
  (lsp-elixir-server-command '("expert" "--stdio"))
  )


(provide 'elixir-ts-mode-config)
