(doom! :editor
       snippets
       (evil +everywhere)
       (format +onsave)
       lispy
       :config
       (default +bindings +smartparens)
       :os
       tty
       :completion
       company
       (vertico +icons)
       :tools
       lookup
       (lsp +peek +eglot)
       (magit +forge)
       :input
       chinese
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
       :checkers
       syntax
       :emacs
       (ibuffer +icons)
       (undo +tree)
       (dired +icons +ranger)
       tramp
       :ui
       modeline
       (popup +defaults)
       vi-tilde-fringe
       nav-flash
       ophints)
