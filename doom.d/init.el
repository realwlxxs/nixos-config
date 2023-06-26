(doom! :editor
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
       :lang
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
       (dired +icons +ranger)
       tramp
       :ui
       (ligatures +extra +iosevka)
       nav-flash
       ophints)
