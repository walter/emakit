;; lsp-mode-config.el
;;
;; lsp-mode for use with elixir
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

(use-package lsp-mode
  :commands lsp
  :ensure t
  :diminish lsp-mode
  :hook
  (elixir-mode . lsp)
  :init
  (add-to-list 'exec-path "~/.elixir-ls/release")
  (setq lsp-keymap-prefix "C-c l")
  )

(use-package lsp-ui)
; (use-package company-lsp :commands company-lsp)

;; disable pop up docs, you can use the , h h command to show them
;; or toggle them on or off with , T d
; (setq lsp-ui-doc-enable nil)

(provide 'lsp-mode-config)
