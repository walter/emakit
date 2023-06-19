;; file-mode-mappings.el
;;
;; file type to mode mappings, largely legacy
;; mostly web-mode mappings for various template file extensions
;;
;; Walter McGinnis, 2023-06-19
;;
;; http://github.com/walter/emakit

;; make github flavored markdown the default for README.md files --keep unless superceded
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; Rake files are ruby, too, as are gemspecs, rackup files, etc. --keep for legacy projects
;; (add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rxml$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

;; use web-mode rather than html, nxml modes --keep
(add-to-list 'auto-mode-alist '("\\.html.eex\\'" . web-mode))
(add-to-list 'magic-mode-alist '("^<!DOCTYPE html" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; (setq web-mode-engines-alist '(("elixir" . "\\.ex\\'")))
;; (setq web-mode-engines-alist '(("elixir" . "\\.heex\\'")))

(provide 'file-mode-mappings)
