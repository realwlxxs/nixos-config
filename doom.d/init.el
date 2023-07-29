(doom! :editor
       snippets
       (evil +everywhere)
       (format +onsave)
       lispy
       :config
       (default +bindings +smartparens)
       :checkers
       (syntax +flymake)
       :os
       tty
       :completion
       company
       (vertico +icons)
       :tools
       lookup
       (lsp +peek +eglot)
       (magit +forge)
       :lang
       (json +lsp)
       rest
       (go +lsp)
       (sh +lsp)
       (haskell +lsp)
       (erlang +lsp)
       (latex +lsp)
       common-lisp
       emacs-lisp
       nix
       (python +lsp +pyright)
       web
       (javascript +lsp)
       (gdscript +lsp)
       (cc +lsp)
       :emacs
       (ibuffer +icons)
       (undo +tree)
       (dired +icons +ranger)
       :ui
       (vc-gutter +diff-hl +pretty)
       indent-guides
       (window-select +numbers +switch-window)
       modeline
       (popup +defaults +all)
       vi-tilde-fringe
       nav-flash
       ophints)
