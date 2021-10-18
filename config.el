;; (defvar last-file-name-handler-alist file-name-handler-alist)
;; (setq gc-cons-threshold 402653184
;;       gc-cons-percentage 0.6
;;       file-name-handler-alist nil)
(setq inhibit-compacting-font-caches t)
(setq user-full-name "Sam Precious")
(setq user-mail-address "samwdp@gmail.com")
(toggle-frame-maximized)
(setq display-line-numbers-type nil)
(setq display-fill-column-indicator-column 80)
(setq doom-font (font-spec :family "Hasklug NF" :size 18 :weight 'light )
      doom-big-font (font-spec :family "Hasklug NF" :size 36)
      doom-variable-pitch-font (font-spec :family "NotoSans Nerd Font" :size 18))
(set-face-attribute 'fixed-pitch-serif (font-spec :family "NotoSans Nerd Font" :size 18))
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
(setq doom-scratch-initial-major-mode 'org-mode)
(setq default-directory "~")
(setq company-idle-delay 0
      company-tooltip-idle-delay 0)
(setq centered-window-mode t)
(when IS-WINDOWS (setq dap-netcore-install-dir "C:/tools/"))
(setq +debugger--dap-alist `(((:lang csharp +lsp)     :after csharp-mode :require dap-netcore)
                             ((:lang cc +lsp)         :after ccls        :require (dap-lldb dap-gdb-lldb))
                             ((:lang python +lsp)     :after python      :require dap-python)
                             ((:lang rust +lsp)       :after rustic-mode :require (dap-lldb dap-cpptools))
                             ((:lang javascript +lsp) :after (js2-mode typescrit-mode) :require (dap-node dap-chrome))))
(when (featurep! :ui treemacs)
(setq treemacs-width 40
      treemacs-position 'right
      treemacs-indentation 2))
(when (featurep! :ui neotree)
  (setq neo-theme 'ascii
        neo-window-position 'right
        neo-window-width 40))
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
        lsp-ui-doc-max-width  60
        lsp-ui-sideline-enable nil
        lsp-lens-enable t))
(after! ivy-posframe
  (setq ivy-posframe-border-width 5))
(when IS-WINDOWS
  (setq explicit-shell-file-name "C:/Program Files/PowerShell/7/pwsh.exe"))
(use-package! csharp-mode
  :mode (("\\.csx\\'" . csharp-mode)))
(use-package! lsp-mssql
  :config (add-hook! 'sql-mode-hook 'lsp))
(map!
 :g "<f1>" #'cheat-sh
 :g "<f5>" #'dap-debug
 :g "<f11>" #'+lookup/references
 :g "<f12>" #'+lookup/definition
 :g "C-<f12>" #'+lookup/implementations
 :g "C-/" #'comment-line
 :leader
 :desc "Format buffer" "f o" #'+format/buffer)
(map! (:when (featurep! :tools lsp)
       :g "<f11>" #'+lookup/references
       :g "<f12>" #'+lookup/definition
       :g "C-<f12>" #'+lookup/implementations
       :g "<f3>" #'lsp-ui-doc-focus-frame
       :g "C-<f3>" #'lsp-ui-doc-unfocus-frame))
(map! (:when (featurep! :lang csharp +dotnet)
        (:map csharp-mode-map
          :localleader
          :desc "Sharper" "s" #'sharper-main-transient)))
(map! (:when (featurep! :tools debugger +lsp)
       (:map dap-mode-map
        :g "<f2>" #'dap-breakpoint-toggle
        :g "<f10>" #'dap-step-in
        :g "<f11>" #'dap-next
        :g "<f8>"  #'dap-continue)))
(when (f-directory? (concat doom-private-dir "doom-private"))
  (load! "private/sql")
  )
