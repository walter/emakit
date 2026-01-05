# emakit - emacs editor configuration kit

Supercedes [Aquamacs Emacs Starter Kit](https://github.com/walter/aquamacs-emacs-starter-kit) as I have now moved to [Emacs Plus](https://github.com/d12frosted/homebrew-emacs-plus).

Right now this is aimed at setting up a productive environment for programming in  [Elixir](https://elixir-lang.org) via [Language Server Protocol](https://microsoft.github.io/language-server-protocol/) use, but other language support is easily added.

## External Required Software

Obviously emacs (at least 30.1, for built in tree-sitter support). This is aimed at Emacs Plus, but should work with most vanilla emacs variants without much modification. Assumes `~/.emacs.d` directory.

Since it relies on LSP, you'll need to install an lsp server for any languages you want to support. This will be touched on in Install below. Remember where you installed elixir lsp server for later. This branch is set run off the official [expert](https://expert-lsp.org/) elixir LSP which is still pre-release. See steps below for installation (you'll also need `gh` via `brew install gh`).

You'll also need to install tree-sitter and make sure your emacs is able to use it (e.g. `brew install tree-sitter`).

We also take advantage of [treesit-auto](https://github.com/renzmann/treesit-auto) for installation of tree-sitter versions of major mode grammers. E.g. the first time you open an JavaScript file, if the grammer hasn't beem downloaded and enabled previously, it will be.

## Included Elixir support

* [elixir-ts-mode](https://github.com/wkirschbaum/elixir-ts-mode)
* [heex-ts-mode](https://github.com/wkirschbaum/heex-ts-mode)
* [mix minor mode](https://github.com/ayrat555/mix.el)
* [inf-elixir](https://github.com/J3RN/inf-elixir)
* [exunit](https://github.com/ananthakumaran/exunit.el)
* [lsp-treemacs](https://github.com/emacs-lsp/lsp-treemacs)
* [yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)

## Install

* set up your expert lsp server and make sure that its command is in your `PATH` and executable like so:

``` bash
# Apple Silicon, make sure you have ~/.local/bin in you PATH or adjust accordingly
$ gh release download nightly \
  --pattern "*darwin_arm64" \
  --output ~/.local/bin/expert \
  --clobber \
  --repo elixir-lang/expert

$ chmod +x ~/.local/bin/expert
```

_Note: that `expert` install steps will change when official releases_

* `cd ~/emacs.d/`
* `git clone git://github.com/walter/emakit.git` (or even better clone your fork)
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

* after packages have been installed, but before you open an elixir or heex file, do the following for elixir and then heex:

```
M-x treesit-install-language-grammer
```

Enter the language, then say yes to interactive mode, and then enter corresponding URL using the following mapping ([source](https://beamjourney.com/emacs-30-ubuntu-24-04/#install-language-grammars-for-tree-sitter)) - defaults for all other input should be fine:

| language | URL |
| -------- | --- |
| elixir | https://github.com/elixir-lang/tree-sitter-elixir.git |
| heex | https://github.com/phoenixframework/tree-sitter-heex.git |

