(doom! :editor
       snippets
       (evil +everywhere)
       (format +onsave)
       lispy
       :config
       (default +bindings +smartparens)
       :input
       chinese
       :checkers
       syntax
       :os
       tty
       :term
       eshell
       :completion
       company
       (ivy +fuzzy +icons +prescient)
       :tools
       lookup
       (lsp +peek)
       (magit +forge)
       :lang
       (json +lsp)
       rest
       (latex +lsp +cdlatex +fold +latexmk)
       (org +pandoc +present +pretty +roam2)
       (go +lsp)
       (sh +lsp)
       (haskell +lsp)
       (erlang +lsp)
       common-lisp
       emacs-lisp
       nix
       (python +lsp +pyright)
       (web +lsp)
       (javascript +lsp)
       (gdscript +lsp)
       (cc +lsp)
       :emacs
       (ibuffer +icons)
       (undo +tree)
       (dired +icons +ranger)
       :ui
       (ligatures +extra)
       (vc-gutter +diff-hl +pretty)
       indent-guides
       (window-select +numbers +switch-window)
       (popup +defaults +all)
       vi-tilde-fringe
       nav-flash
       ophints)
