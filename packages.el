;; -*- no-byte-compile: t; -*-
;;; .doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:host github :repo "username/repo"))
;; (package! builtin-package :disable t)

(package! ob-csharp :recipe (:host github :repo "samwdp/ob-csharp"))
(package! ob-powershell :recipe (:host github :repo "rkiggen/ob-powershell"))
(package! battery :disable)
(package! fancy-battery)
