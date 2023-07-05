;; exunit-config.el
;;
;; Install exunit package for use with elixir-mode
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

;; https://github.com/ananthakumaran/exunit.el
(use-package exunit
  :ensure t
  :after elixir-ts-mode
  :bind
  (:map elixir-ts-mode-map
        ("C-c , a" . exunit-verify-all)
        ("C-c , A" . exunit-verify-all-in-umbrella)
        ("C-c , s" . exunit-verify-single)
        ("C-c , v" . exunit-verify)
        ("C-c , r" . exunit-rerun)
        ("C-c , t" . exunit-toggle-file-and-test)
        ("s-r" . exunit-rerun)
        ))

(provide 'exunit-config)
