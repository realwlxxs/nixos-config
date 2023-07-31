(setq doom-theme 'modus-operandi)

(setq doom-font (font-spec :family "Sarasa Mono Slab SC" :size 14 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "Sarasa Mono Slab SC")
      doom-unicode-font (font-spec :family "Sarasa Mono Slab SC" :size 14)
      doom-big-font (font-spec :family "Sarasa Mono Slab SC" :size 20))

(setq auto-save-default t)

(setq display-line-numbers-type 'relative)

(use-package! sis
  :config
  (sis-ism-lazyman-config "xkb:us::eng" "OTHER_INPUT_SOURCE" 'ibus)
  (sis-global-cursor-color-mode t)
  (sis-global-respect-mode t)
  (sis-global-context-mode t)
  (sis-global-inline-mode t))
