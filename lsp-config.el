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
  (elixir-ts-mode . lsp)
  :hook
  (heex-ts-mode . lsp)
  :init
  (add-to-list 'exec-path "~/.elixir-ls/release")
  (setq lsp-keymap-prefix "C-, l")
  :custom
  (lsp-diagnostics-flycheck-default-level 'warning)
  (lsp-diagnostics-provider :flycheck)
  )

(use-package lsp-ui)

;; disable pop up docs, you can use the , h h command to show them
;; or toggle them on or off with , T d
;; (setq lsp-ui-doc-enable nil)

;; fix diagnostics getting truncated in sideline
;; https://elixir-lang.slack.com/archives/C067Y5FN1/p1667322422740149
;; and https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
(setq lsp-ui-sideline-show-code-actions t)
(setq lsp-ui-sideline-show-diagnostics t)

;; lsp-file-watch-ignore-list
;; thanks aw from https://elixir-lang.slack.com/archives/C067Y5FN1/p1667383339645819
(dolist (match
         '("[/\\\\].direnv$"
           "[/\\\\]node_modules$"
           "[/\\\\]deps"
           "[/\\\\]priv"
           "[/\\\\]build"
           "[/\\\\]_build"))
  (add-to-list 'lsp-file-watch-ignored match))

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

;; https://github.com/emacs-lsp/lsp-treemacs
(use-package lsp-treemacs)

(lsp-treemacs-sync-mode 1)

;; lsp-credo requires lsp-mode 20230628.1609 or later
;; https://github.com/elixir-tools/credo-language-server
(custom-set-variables '(lsp-credo-version "0.3.0"))

(provide 'lsp-config)
