(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(setq display-line-numbers-type 'relative)
(setq doom-font (font-spec :family "Fira Code" :size 14))
(setq doom-theme 'doom-gruvbox)
(setq +doom-dashboard-banner-dir
      (concat doom-private-dir "banners/"))
(setq doom-modeline-major-mode-color-icon t)
(toggle-frame-maximized)
(setq-default fill-column 100)
(add-hook! '(text-mode-hook prog-mode-hook conf-mode-hook)
           #'display-fill-column-indicator-mode)
(setq projectile-indexing-method 'native)
(setq ispell-program-name "hunspell")
(org-babel-do-load-languages
'org-babel-load-languages
'((csharp . t)
(powershell . t)
))
(use-package! csharp-mode
  :mode (("\\.csx\\'")))
(global-set-key (kbd "C-/") 'comment-line)
