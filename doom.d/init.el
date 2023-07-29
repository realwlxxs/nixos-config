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
       (ivy +fuzzy +icons +prescient)
       :tools
       tree-sitter
       lookup
       (lsp +peek +eglot)
       (magit +forge)
       :lang
       (json +lsp +tree-sitter)
       rest
       (go +lsp +tree-sitter)
       (sh +lsp +tree-sitter)
       (haskell +lsp +tree-sitter)
       (erlang +lsp +tree-sitter)
       (latex +lsp +cdlatex +fold +latexmk)
       common-lisp
       emacs-lisp
       (nix +tree-sitter)
       (python +lsp +tree-sitter +pyright)
       (web +lsp +tree-sitter)
       (javascript +lsp +tree-sitter)
       (gdscript +lsp)
       (cc +lsp +tree-sitter)
       :emacs
       (ibuffer +icons)
       (undo +tree)
       (dired +icons +ranger)
       :ui
       (vc-gutter +diff-hl +pretty)
       indent-guides
       (window-select +numbers +switch-window)
       (popup +defaults +all)
       vi-tilde-fringe
       nav-flash
       ophints)
