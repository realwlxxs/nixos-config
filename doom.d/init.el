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
       (org +roam2)
       emacs-lisp
       nix
       (python +lsp +pyright)
       web
       (javascript +lsp)
       :emacs
       tramp
       :ui
       doom
       doom-dashboard
       modeline
       (treemacs +lsp))
