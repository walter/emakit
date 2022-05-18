;; mac-os-keyboard-shortcuts.el
;;
;; Turn on (and maybe later configure) ido
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

; see https://gist.github.com/railwaycat/3498096

(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(hyper z)] 'undo)

(provide 'mac-os-keyboard-shortcuts)
