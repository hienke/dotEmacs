;;; init.el --- Emacs configuration file


(add-to-list 'load-path user-emacs-directory)
(load (concat user-emacs-directory "vendor/init"))


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; for the first run.
(unless package-archive-contents
  (package-refresh-contents))

;; must installs
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      '(expand-region ibuffer-vc ido-ubiquitous multiple-cursors smex
                      undo-tree use-package))

;; `use-package' to maintain packages
(require 'use-package)


;;; equip defuns
(load (concat user-emacs-directory "defuns/init"))


;; editing, basic behavior and so on
(require 'setup-editing)

(require 'setup-font)

(require 'setup-theme)

;; extras settings
(require 'extras)

(require 'coding)

(require 'locales)

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))


;;; init.el ends here
