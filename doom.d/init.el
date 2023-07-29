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
       :emacs
       (ibuffer +icons)
       (undo +tree)
       (dired +icons +ranger)
       tramp
       :ui
       indent-guides
       (window-select +numbers +switch-window)
       modeline
       (popup +defaults +all)
       vi-tilde-fringe
       nav-flash
       ophints)
