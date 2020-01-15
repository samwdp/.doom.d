;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq
display-line-numbers-type 'relative
omnisharp-expected-server-version "1.34.9"
 )

;; Theming
(setq
 doom-font (font-spec :family "Fira Code" :size 14)
 doom-localleader-key "m"
 projectile-project-search-path '("~/projects/nimbus" "~/projects/personal")
; +mu4e-backend 'offlineimap
 doom-theme 'doom-gruvbox
 doom-gruvbox-brighter-comments 't
 )

 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
 ;;(set-frame-parameter (selected-frame) 'alpha <both>)
 (set-frame-parameter (selected-frame) 'alpha '(90 . 50))
 (add-to-list 'default-frame-alist '(alpha . (90 . 50)))
(defun toggle-transparency ()
   (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ;; Also handle undocumented (<active> <inactive>) form.
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(90 . 50) '(100 . 100)))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)


(after! mu4e
  (setq! mu4e-maildir (expand-file-name "~/.local/share/mail") ; the rest of the mu4e folders are RELATIVE to this one
         mu4e-get-mail-command "mbsync -ca ~/.doom.d/.mbsyncrc"
         mu4e-index-update-in-background t
         mu4e-compose-signature-auto-include t
         mu4e-use-fancy-chars t
         mu4e-view-show-addresses t
         mu4e-view-show-images t
         mu4e-compose-format-flowed t
         ;mu4e-compose-in-new-frame t
         mu4e-change-filenames-when-moving t ;; http://pragmaticemacs.com/emacs/fixing-duplicate-uid-errors-when-using-mbsync-and-mu4e/

         ;; Message Formatting and sending
         message-send-mail-function 'smtpmail-send-it
         message-kill-buffer-on-exit t
         ;; Org mu4e
         org-mu4e-convert-to-html t
         ))
(set-email-account! "sam.precious@nimbusdti.co.uk"
                    '((user-mail-address      . "sam.precious@nimbusdti.co.uk")
                      (user-full-name         . "Sam Precious")
                      (smtpmail-smtp-server   . "smtp.office365.com")
                      (smtpmail-smtp-service  . 587)
                      (smtpmail-stream-type   . starttls)
                      (smtpmail-debug-info    . t)
                      (mu4e-drafts-folder     . "/work/Drafts")
                      (mu4e-refile-folder     . "/work/Archive")
                      (mu4e-sent-folder       . "/work/Sent Items")
                      (mu4e-trash-folder      . "/work/Deleted Items")
                      (mu4e-update-interval   . 1800)
                      ;(mu4e-sent-messages-behavior . 'delete)
                      )
                    nil)
