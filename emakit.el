;; emakit.el
;;
;; Trigger loading of emakit configuration and package loading
;;
;; Walter McGinnis, 2023-06-19
;;
;; http://github.com/walter/emakit

;;;;; IMPORTANT: this requires loading in ~/emacs.d/init.el
;;;;; or similar emacs start up file - see Install in README

;; Set up package stuff
;; from https://lucidmanager.org/productivity/configure-emacs/
;;
;; Define and initialise package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure 't)

;; we depend on treesit-auto to load grammers on first use of a mode
;; https://github.com/renzmann/treesit-auto
;;   (setq treesit-auto-install 't)
(use-package treesit-auto
  :demand t
  :config
  (setq treesit-auto-install 'prompt)
  (global-treesit-auto-mode))

;; Additional packages and configuration

(require 'appearance)
(require 'adjust-shell)
(require 'magit-config)
(require 'yasnippet-config)
(require 'smartparens-config)
(require 'which-key-config)
(require 'load-env-vars-config)
(require 'exunit-config)
(require 'elixir-ts-mode-config)
(require 'lsp-config)
(require 'flycheck-config)
(require 'mix-config)
(require 'inf-elixir-config)
(require 'web-config)
(require 'company-config)
(require 'whitespace-config)
(require 'ido-config)
(require 'file-mode-mappings)
(require 'org-mode-config)
(require 'presentation-config)
(require 'useful-functions)
(require 'elixir-useful-functions)
(require 'mac-os-keyboard-shortcuts)
(require 'more-packages)
;; (require 'polymode-config)

(provide 'emakit)
