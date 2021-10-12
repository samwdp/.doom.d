(setq inhibit-compacting-font-caches t)
(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(toggle-frame-maximized)
(setq display-line-numbers-type nil)
(setq display-fill-column-indicator-column 80)
(when IS-WINDOWS
  (setq doom-font (font-spec :family "Hasklug NF" :size 18 :weight 'light )
        doom-big-font (font-spec :family "Hasklug NF" :size 36)
        doom-variable-pitch-font (font-spec :family "NotoSans Nerd Font" :size 18))
  (set-face-attribute 'fixed-pitch-serif (font-spec :family "NotoSans Nerd Font" :size 18)))
(when IS-LINUX
  (setq doom-font (font-spec :family "monospace" :size 18)
        doom-big-font (font-spec :family "monospace" :size 36)
        doom-variable-pitch-font (font-spec :family "sans" :size 18)))
;; you don't need to include all of them you can pick and mix
(plist-put! +ligatures-extra-symbols
  ;; org
  :name          "»"
  :src_block     "»"
  :src_block_end "«"
  :quote         nil
  :quote_end     nil
  ;; Functional
  :lambda        "λ"
  :def           "ƒ"
  :composition   "∘"
  :map           "↦"
  ;; Types
  :null          "∅"
  :true          "✓"
  :false         "✘"
  :int           nil
  :float         nil
  :str           nil
  :bool          nil
  :list          nil

  ;; Flow
  :not           "￢"
  :in            "∈"
  :not-in        "∉"
  :and           "∧"
  :or            "∨"
  :for           "∀"
  :some          "∃"
  :return        "⟼"
  :yield         "⟻"
  ;; Other
  :union         "⋃"
  :intersect     "∩"
  :diff          "∖"
  :tuple         "⨂"
  :pipe          "|" ;; FIXME: find a non-private char
  :dot           "•")  ;; you could also add your own if you want
(setq doom-theme 'my-doom-gruvbox)
(setq fancy-splash-image (concat doom-private-dir "banners/default.png"))
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(setq doom-modeline-buffer-file-name-style 'file-name)
(setq doom-modeline-buffer-encoding nil)
(setq doom-modeline-height 1)
(set-face-attribute 'mode-line nil :height 120)
(set-face-attribute 'mode-line-inactive nil :height 120)
(add-hook 'after-init-hook #'fancy-battery-mode)
(setq fancy-battery-mode-line
      '(:eval (unless (equal (cdr (assq ?b fancy-battery-last-status)) "+")
                (fancy-battery-default-mode-line))))
(setq doom-scratch-initial-major-mode 'org-mode)
(setq default-directory "~")
(setq company-idle-delay 0
      company-tooltip-idle-delay 0)
(setq centered-window-mode t)
(setq treemacs-width 40)
(setq treemacs-position 'right)
(setq treemacs-no-png-images t)
(setq treemacs-indentation 2)
(setq projectile-indexing-method 'native)
(when IS-WINDOWS
  (setq projectile-project-search-path '("W:\\foresolutions\\" "W:\\personal\\")))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((csharp . t)
   (powershell . t)))
(after! lsp-ui
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-position 'top-right-corner
        lsp-ui-doc-alignment 'frame
        lsp-ui-doc-max-width  60)
  (setq lsp-lens-enable t)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-imenu-enable t))
(setq lsp-completion-show-kind nil)
(after! ivy-posframe
  (setq ivy-posframe-border-width 5))
(setq ispell-dictionary "en_GB")
(when IS-WINDOWS
  (setq explicit-shell-file-name "C:/Program Files/PowerShell/7/pwsh.exe"))
(use-package! csharp-mode
  :mode (("\\.csx\\'" . csharp-mode)))
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "<f3>") 'lsp-ui-doc-focus-frame)
(global-set-key (kbd "C-<f3>") 'lsp-ui-doc-unfocus-frame)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f11>") '+lookup/references)
(global-set-key (kbd "<f12>") '+lookup/definition)
(global-set-key (kbd "C-<f12>") 'lsp-goto-implementation)
(defun toggle-battery ()
  (if (string-match (battery-format "%L" (funcall battery-status-function)) "off-line") (display-battery-mode t) (display-battery-mode nil)))
