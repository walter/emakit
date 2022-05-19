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

; see https://github.com/elixir-editors/emacs-elixir#elixir-format
; comment out if you don't want on buffer save formatting
; read link for details on setting different format config file
;; Create a buffer-local hook to run elixir-format on save, only when we enable elixir-mode.
(add-hook 'elixir-mode-hook
          (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))

(provide 'elixir-mode-config)
