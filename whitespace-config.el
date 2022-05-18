;; whitespace-config.el
;;
;; Selectively show and clean up dangling whitespace on write
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

;; clean trailing whitespace on save
(require 'whitespace)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; https://www.emacswiki.org/emacs/WhiteSpace
;; turn on whitespace clean up
(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

(provide 'whitespace-config)
