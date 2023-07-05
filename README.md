# emakit - emacs editor configuration kit

Supercedes [Aquamacs Emacs Starter Kit](https://github.com/walter/aquamacs-emacs-starter-kit) as I have now moved to [Emacs Plus](https://github.com/d12frosted/homebrew-emacs-plus).

Right now this is aimed at setting up a productive environment for programming in  [Elixir](https://elixir-lang.org) via [Language Server Protocol](https://microsoft.github.io/language-server-protocol/) use, but other language support is easily added.

## External Required Software

Obviously emacs (at least 29.1 for tree-sitter support). This is aimed at Emacs Plus, but should work with most vanilla emacs variants without much modification. Assumes `~/.emacs.d` directory.

Since it relies on LSP, you'll need to install an lsp server for any languages you want to support. This will be touched on in Install below. Remember where you installed elixir lsp server for later. Later emacs will also be installing the `credo-language-server` binary.

You'll also need to install tree-sitter and make sure your emacs is able to use it (e.g. [steps here](https://github.com/wkirschbaum/elixir-ts-mode#installing-emacs-29-on-mac-os-or-linux-via-homebrew)).

We also take advantage of [treesit-auto](https://github.com/renzmann/treesit-auto) for installation of tree-sitter versions of major mode grammers. E.g. the first time you open an JavaScript file, if the grammer hasn't beem downloaded and enabled previously, it will be.

## Included Elixir support

* [elixir-ts-mode](https://github.com/wkirschbaum/elixir-ts-mode)
* [heex-ts-mode](https://github.com/wkirschbaum/heex-ts-mode)
* [mix minor mode](https://github.com/ayrat555/mix.el)
* [inf-elixir](https://github.com/J3RN/inf-elixir)
* [exunit](https://github.com/ananthakumaran/exunit.el)
* [credo-ls via lsp-mode](https://github.com/elixir-tools/credo-language-server#editor-support)
* [lsp-treemacs](https://github.com/emacs-lsp/lsp-treemacs)
* [yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)

## Install

* set up your lsp server and note path of parent directory of `language_server.sh`, default is `~/.elixir-ls/release`
* `cd ~/emacs.d/`
* `git clone git://github.com/walter/emakit.git` (or even better clone your fork)
* if your language server directory setting is different, update in `emakit/lsp-mode-config.el`
* have a look around the files under `emakit`, here's your chance to personalize things, like your theme in `emakit/appearance.el`
* add the following to `~/emacs.d/init.el` - create the file if it doesn't already exist

<pre>
<code>
;; emakit
;; http://github.com/walter/emakit
;; set the dotfiles-dir variable to this directory
(setq kitfiles-dir (concat (file-name-directory
                    (or (buffer-file-name) load-file-name)) "/emakit"))

;; set up our various directories to load
(add-to-list 'load-path kitfiles-dir)
(require 'emakit)
</code>
</pre>


* restart emacs and wait for packages to install...

* after packages have been install, run `M-x lsp-install-server credo-language-server`
