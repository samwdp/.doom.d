;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;

(setq
 user-full-name "Sam Precious"
 display-line-numbers-type 'relative
 omnisharp-expected-server-version "1.34.6"
 org-directory "~/Dropbox/org"
 )

(setq
 doom-font (font-spec :family "Fira Code" :size 14)
projectile-project-search-path '("~/projects/nimbus" "~/projects/personal" "~/projects/dfe")
 )

(load-theme 'doom-gruvbox t)
