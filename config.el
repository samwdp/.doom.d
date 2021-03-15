(setq inhibit-compacting-font-caches t)
(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(setq display-line-numbers-type 'relative)
(setq doom-font (font-spec :family "NotoSansMono Nerd Font" :size 18))
(setq doom-theme 'my-doom-gruvbox)
(setq +doom-dashboard-banner-dir
      (concat doom-private-dir "banners/"))
(toggle-frame-maximized)
(setq doom-modeline-buffer-file-name-style nil)
(setq doom-modeline-buffer-encoding nil)
(add-hook 'after-init-hook #'display-battery-mode)
(setq scroll-margin 6)
(setq initial-major-mode 'org-mode)
(setq doom-localleader-key ","
      doom-localleader-alt-key "M-,")
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
(setq ivy-posframe-border-width 5
      ivy-posframe-min-width 60)
(when IS-WINDOWS
  (setq explicit-shell-file-name "C:/Program Files/PowerShell/7/pwsh.exe"))
(use-package! csharp-mode
  :mode (("\\.csx\\'" . csharp-mode)))
(global-set-key (kbd "C-/") 'comment-line)
