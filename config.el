(setq inhibit-compacting-font-caches t)
(setq org-directory "~/Dropbox/org")
(setq org-log-done 'time)
(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(setq display-line-numbers-type 'relative)
(setq doom-font (font-spec :family "NotoSansMono Nerd Font" :size 18))
(setq doom-theme 'doom-gruvbox)
(setq +doom-dashboard-banner-dir
      (concat doom-private-dir "banners/"))
(toggle-frame-maximized)
(setq doom-modeline-buffer-file-name-style nil)
(setq doom-modeline-buffer-encoding nil)
(add-hook 'after-init-hook #'display-battery-mode)
(setq scroll-margin 6)
(setq projectile-indexing-method 'native)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((csharp . t)
   (powershell . t)))
(setq lsp-ui-doc-enable t
      lsp-ui-doc-position 'top-right-corner
      lsp-ui-doc-alignment 'frame
      lsp-ui-doc-max-width 70)
(setq lsp-lens-enable t)
(setq lsp-ui-sideline-enable nil)
(setq lsp-ui-imenu-enable t)
(setq ispell-dictionary "en_GB")
(use-package! csharp-mode
  :mode (("\\.csx\\'" . csharp-mode)))
(global-set-key (kbd "C-/") 'comment-line)
