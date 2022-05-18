;; ido-config.el
;;
;; Turn on (and maybe later configure) ido
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

; see https://masteringemacs.org/article/introduction-to-ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-create-new-buffer 'always)
(ido-mode 1)

(provide 'ido-config)
