(setq custom-theme-directory (concat user-emacs-directory "themes"))
(if window-system (load-theme 'base16-monokai t))

(provide 'setup-theme)