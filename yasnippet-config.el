;; yasnippet-config.el
;;
;; Install yasnippet package for use with lsp-ui, etc.
;;
;; Walter McGinnis, 2023-06-19
;;
;; http://github.com/walter/emakit

;; useful blog post as reference: https://jdhao.github.io/2021/10/06/yasnippet_setup_emacs/
;; and http://joaotavora.github.io/yasnippet/snippet-reference.html
(use-package yasnippet)
;; https://github.com/AndreaCrotti/yasnippet-snippets
(use-package yasnippet-snippets)

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(provide 'yasnippet-config)
