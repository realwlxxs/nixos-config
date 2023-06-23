(doom! :editor
       (evil +everywhere)
       (format +onsave)
       :os
       tty
       :completion
       (company +childframe)
       (ivy +childframe +fuzzy +icons +prescient)
       :tools
       lookup
       (lsp +peek)
       (magit +forge)
       :lang
       (latex +lsp)
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
       modeline
       (treemacs +lsp))
