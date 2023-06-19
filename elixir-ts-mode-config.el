;; elixir-ts-mode-config.el
;;
;; Install elixir-ts-mode package for use with lsp-mode
;;
;; Walter McGinnis, 2023-06-19
;;
;; http://github.com/walter/emakit

(require 'treesit)

(add-to-list 'major-mode-remap-alist '(elixir-mode . elixir-ts-mode))

(use-package elixir-ts-mode
  :ensure t
  :hook
  (
   (elixir-ts-mode . flycheck-mode)
   (elixir-ts-mode . smartparens-mode)
   (elixir-ts-mode . mix-minor-mode)
   (elixir-ts-mode . exunit-mode)
   )
  :config (add-hook 'elixir-ts-mode-hook (lambda ()
                                           (add-hook 'before-save-hook 'lsp-format-buffer))))


(provide 'elixir-ts-mode-config)
