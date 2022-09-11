;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; My name
(setq user-full-name "Alex Patterson")

;; Theme
(setq doom-theme 'doom-one)

;; Display line numbers
(setq display-line-numbers-type t)

;; Org directory
(setq org-directory "~/org/")

;; Associate poly-r with Rmd files
(add-to-list 'auto-mode-alist
        '("\\.[rR]md\\'" . poly-gfm+r-mode))

;; Define function to add %>% pipe
;; Taken from https://emacs.stackexchange.com/questions/8041/how-to-implement-the-piping-operator-in-ess-mode
(defun then_R_operator ()
  "R - %>% operator or 'then' pipe operator"
  (interactive)
  (just-one-space 1)
  (insert "%>%")
  (reindent-then-newline-and-indent))

;; Map %>% pipe to key
(after! ess
  (map! "C-%" #'then_R_operator))

;; Set Qualities
(setq
 projectile-project-search-path '("~/Work/"))
