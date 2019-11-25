;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
display-line-numbers-type 'relative
omnisharp-expected-server-version "1.34.6"
 )

(setq
 doom-font (font-spec :family "Fira Code" :size 14)
 doom-localleader-key "m"
 projectile-project-search-path '("~/projects/nimbus" "~/projects/personal")
 +mu4e-backend 'offlineimap
 doom-theme 'doom-gruvbox
 doom-gruvbox-brighter-comments 't
 )
