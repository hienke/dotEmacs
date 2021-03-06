;; do not ask, just follow symlinks
(setq vc-follow-symlinks t)

(eval-after-load 'ediff
  '(progn
     (setq ediff-diff-options "-w")
     (setq ediff-split-window-function 'split-window-horizontally)
     (setq ediff-window-setup-function 'ediff-setup-windows-plain)))
