(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(setq display-line-numbers-type 'relative)
 (setq doom-font (font-spec :family "FiraCode NF" :size 14))
(setq doom-theme 'my-doom-gruvbox
      doom-gruvbox-brighter-comments t)
(setq +doom-dashboard-banner-dir
      (concat doom-private-dir "banners/"))
(setq doom-modeline-major-mode-color-icon t)
(toggle-frame-maximized)
(setq projectile-indexing-method 'native)
(setq ispell-program-name "hunspell")
;;(org-babel-do-load-languages
;; 'org-babel-load-languages
;; '((csharp . t)
;;   (powershell . t)
;;   ))
(setq projectile-indexing-method 'native)
(setq omnisharp-expected-server-version "1.35.4")
(setq doom-localleader-key "m" )
