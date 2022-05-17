# emakit - emacs editor configuration kit

Supercedes [Aquamacs Emacs Starter Kit](https://github.com/walter/aquamacs-emacs-starter-kit) as I have now moved to [Emacs Plus](https://github.com/d12frosted/homebrew-emacs-plus).

Right now this is aimed at setting up a productive environment for programming in  [Elixir](https://elixir-lang.org) via [Language Server Protocol](https://microsoft.github.io/language-server-protocol/) use, but other language support is easily added.

## External Required Software

Obviously emacs. This is aimed at Emacs Plus, but should work with most vanilla emacs variants without much modification. Assumes `~/.emacs.d` directory.

Since it relies on LSP, you'll need to install an lsp server for any languages you want to support. This will be touched on in Install below.

## Install

* `cd ~/emacs.d/`
* `git clone git://github.com/walter/emakit.git`
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
(require 'init)
</code>
</pre>


* restart emacs
