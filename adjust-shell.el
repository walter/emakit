;; adjust-shell.el
;;
;; set shell to zsh
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

;; set default shell to zsh
;; assumes homebrew installed zsh at /opt/local/bin/zsh
;; as on Apple Silicon, but comments have /usr/local/bin/zsh
;; for older default
;; alternatively you can use zsh that comes with Mac OS X
;;
;; (setenv "ESHELL" "/bin/zsh")
;; (setenv "ESHELL" "/usr/local/bin/zsh")
(setenv "ESHELL" "/opt/homebrew/bin/zsh")
;; (setenv "SHELL" "/usr/local/bin/zsh")
(setenv "SHELL" "/opt/homebrew/bin/zsh")

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :init
  (progn (exec-path-from-shell-initialize)))

(provide 'adjust-shell)
