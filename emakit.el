;; emakit.el
;;
;; Trigger loading of emakit configuration and package loading
;;
;; Walter McGinnis, 2022-05-18
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

;; use-package to simplify the config file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)

;; Additional packages and configuration

(require 'appearance)
(require 'adjust-shell)
(require 'magit-config)
(require 'flycheck-config)
(require 'yasnippet-config)
(require 'smartparens-config)
(require 'which-key-config)
(require 'load-env-vars-config)
(require 'exunit-config)
(require 'elixir-mode-config)
(require 'lsp-mode-config)
(require 'web-config)
(require 'company-web-config)
(require 'emoji-font-config)
(require 'company-config)
(require 'whitespace-config)
(require 'ido-config)
(require 'file-mode-mappings)
(require 'org-mode-config)
(require 'useful-functions)
(require 'mac-os-keyboard-shortcuts)
(require 'more-packages)
(require 'unicode-fonts-config)

(provide 'emakit)
