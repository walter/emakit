;; emoji-font-config.el
;;
;; set up to use Apple provided emoji font and provide gh style shortcuts
;;
;; Walter McGinnis, 2022-05-18
;;
;; http://github.com/walter/emakit

;; https://www.reddit.com/r/emacs/comments/8ph0hq/i_have_converted_from_the_mac_port_to_the_ns_port/
;; not tested with emacs26 (requires a patched Emacs version for multi-color font support)
(if (version< "27.0" emacs-version)
    (set-fontset-font
     "fontset-default" 'unicode "Apple Color Emoji" nil 'prepend)
  (set-fontset-font
   t 'symbol (font-spec :family "Apple Color Emoji") nil 'prepend))

;; https://github.com/dunn/company-emoji
(use-package company-emoji)

(provide 'emoji-font-config)
