(setq inhibit-compacting-font-caches t)
(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(setq display-line-numbers-type nil)
(when IS-WINDOWS
  (setq doom-font (font-spec :family "NotoSansMono Nerd Font" :size 18)
        doom-big-font (font-spec :family "NotoSansMono Nerd Font" :size 36)
        doom-variable-pitch-font (font-spec :family "NotoSans Nerd Font" :size 18)))
(when IS-LINUX
  (setq doom-font (font-spec :family "monospace" :size 18)
        doom-big-font (font-spec :family "monospace" :size 36)
        doom-variable-pitch-font (font-spec :family "sans" :size 18)))
(setq doom-theme 'doom-dark+)
;;; :ui doom-dashboard
(setq fancy-splash-image (concat doom-private-dir "banners/default.png"))
;; Don't need the menu; I know them all by heart
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(setq doom-modeline-buffer-file-name-style 'file-name)
(setq doom-modeline-buffer-encoding nil)
(add-hook 'after-init-hook #'fancy-battery-mode)
(setq fancy-battery-mode-line
      '(:eval (unless (equal (cdr (assq ?b fancy-battery-last-status)) "+")
                (fancy-battery-default-mode-line))))
(setq doom-scratch-initial-major-mode 'org-mode)
(setq default-directory "~")
(setq company-idle-delay  0.1
      company-tooltip-idle-delay 0)
(setq centered-window-mode t)
(setq projectile-indexing-method 'native)
(when IS-WINDOWS
  (setq projectile-project-search-path '("W:\\foresolutions\\")))
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
(setq lsp-completion-show-kind nil)
(after! ivy-posframe
  (setq ivy-posframe-border-width 5))
(setq ispell-dictionary "en_GB")
(when IS-WINDOWS
  (setq explicit-shell-file-name "C:/Program Files/PowerShell/7/pwsh.exe"))
(use-package! csharp-mode
  :mode (("\\.csx\\'" . csharp-mode)))
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f11>") '+lookup/references)
(global-set-key (kbd "<f12>") '+lookup/definition)
(defun toggle-battery ()
  (if (string-match (battery-format "%L" (funcall battery-status-function)) "off-line") (display-battery-mode t) (display-battery-mode nil)))
