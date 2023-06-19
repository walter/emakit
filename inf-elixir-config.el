;; inf-elixir-config.el
;;
;; Install mix minor mode package for use with elixir
;;
;; Walter McGinnis, 2023-06-20
;;
;; http://github.com/walter/emakit

;; https://github.com/J3RN/inf-elixir
(use-package inf-elixir
  :ensure t
  :after elixir-ts-mode
  :commands (run-iex-server)
  :config
  (defun run-iex-server ()
    (interactive)
    (inf-elixir-project "iex -S mix phx.server"))
  :bind (("C-c i i" . 'inf-elixir)
         ("C-c i p" . 'inf-elixir-project)
         ("C-c i s" . 'run-iex-server)
         ("C-c i l" . 'inf-elixir-send-line)
         ("C-c i r" . 'inf-elixir-send-region)
         ("C-c i b" . 'inf-elixir-send-buffer)
         ("C-c i R" . 'inf-elixir-reload-module)))

(provide 'inf-elixir-config)
