(doom! :editor
       snippets
       (evil +everywhere)
       (format +onsave)
       lispy
       :os
       tty
       :completion
       company
       (ivy +fuzzy +icons +prescient)
       :tools
       lookup
       (lsp +peek)
       (magit +forge)
       :input
       chinese
       :lang
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
       (undo +tree)
       (dired +icons +ranger)
       tramp
       :ui
       modeline
       (popup +defaults)
       vi-tilde-fringe
       nav-flash
       ophints)
