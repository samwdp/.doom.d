;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
display-line-numbers-type 'relative
omnisharp-expected-server-version "1.35.4"
 )

;; Theming
(setq
 doom-font (font-spec :family "FiraCode NF" :size 14)
 doom-localleader-key "m"
 ;; projectile-project-search-path '("~/projects/nimbus" "~/projects/personal")
                                        ; +mu4e-backend 'offlineimap
 doom-theme 'doom-gruvbox
 doom-gruvbox-brighter-comments 't
 )
(setq +doom-dashboard-banner-dir
      (concat doom-private-dir "banners/"))
(setq doom-modeline-major-mode-color-icon t)
