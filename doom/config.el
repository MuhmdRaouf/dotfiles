;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Mohammed Abdel Raouf"
      user-mail-address "mohammed@raouf.me")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Hasklug Nerd Font" :size 14 :weight 'medium)
      doom-variable-pitch-font (font-spec :family "Hasklug Nerd Font" :size 14 :weight 'medium)
      doom-big-font (font-spec :family "Hasklug Nerd Font" :size 20 :weight 'medium))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/SnowflakeProjects/emacs-org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'visual)

;; sane undo :D
(setq evil-want-fine-undo t)

;; scroll horizontally!
(setq mouse-wheel-tilt-scroll t)
(setq mouse-wheel-flip-direction t)

;; Enable super-save
(require 'super-save)
(super-save-mode +1)

;; Projectile
(setq projectile-project-search-path '("~/SnowflakeProjects/"))
(after! doom-themes
  (setq doom-themes-treemacs-theme "doom-colors"))

;; string-inflection
(require 'string-inflection)
;; default
(global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)

;; for ruby
(add-hook 'ruby-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-u") 'string-inflection-ruby-style-cycle)))
;; for java
(add-hook 'java-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-u") 'string-inflection-java-style-cycle)))
;; for python
(add-hook 'python-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-u") 'string-inflection-python-style-cycle)))

;; JS intend Config
(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

;; Webmode indention mode
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-block-padding 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
