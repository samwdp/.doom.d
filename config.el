(setq inhibit-compacting-font-caches t)
(setq org-directory "~/Dropbox/org")
(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(setq display-line-numbers-type 'relative)
(setq doom-font (font-spec :family "NotoSansMono Nerd Font" :size 20))
(setq doom-theme 'doom-gruvbox)
(setq +doom-dashboard-banner-dir
      (concat doom-private-dir "banners/"))
;; (setq doom-modeline-major-mode-color-icon t)
(toggle-frame-maximized)
(setq doom-modeline-buffer-file-name-style nil)
(setq projectile-indexing-method 'native)
;; (setq ispell-program-name "hunspell")
(org-babel-do-load-languages
 'org-babel-load-languages
 '((csharp . t)
   (powershell . t)))
(setq lsp-headerline-breadcrumb-enable t)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-position 'top-right-angle)
(setq lsp-ui-doc-alignment 'frame)
(setq lsp-lens-enable t)
(setq lsp-ui-sideline-enable nil)
(use-package! csharp-mode
  :mode (("\\.csx\\'" . csharp-mode)))
(global-set-key (kbd "C-/") 'comment-line)
;; (global-set-key (kbd "C-c n") 'sharper-main-transient)

;; Some Functions
