;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; ref: https://gitlab.com/dwt1/dotfiles/-/blob/master/.doom.d/config.org

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Wladimir Braguini Domingues"
      user-mail-address "wladimir.braguini@gmail.com")

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
;; Don't need to do default setup
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
;; (setq doom-font (font-spec :family "Mononoki Nerd Font" :size 15)
;;       doom-variable-pitch-font (font-spec :family "Mononoki Nerd Font" :size 15))
(setq doom-font (font-spec :family "Dank Mono" :size 15 :weight 'normal))

;; Configure Theme (SPC-h-t)
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-palenight)
;; (setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

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

;; https://github.com/zaiste/.doom.d/blob/master/config.el
;; (setq
;;   +doom-dashboard-banner-file (expand-file-name "logo.png" doom-private-dir))
;;
;; evil bindings: https://github.com/hlissner/doom-emacs/blob/85b5103cd9c1405b80d0fb5f690588f013a86f98/modules/config/default/%2Bevil-bindings.el#L246

(map! :leader
      (:prefix ("s" . "search")
       :desc "Clear search highlight" "c" #'evil-ex-nohighlight))

;; (def-package! org-super-agenda

;; Configure mspyls
;; https://github.com/hlissner/doom-emacs/blob/develop/modules/lang/python/README.org
(after! lsp-python-ms
  (set-lsp-priority! 'mspyls 1))

;; https://github.com/hlissner/doom-emacs/blob/develop/docs/api.org#center-emacs-initial-frame-with-a-fixed-size
;; (setq default-frame-alist '((left . 0) (width . 141) (fullscreen . fullheight)))

;; https://tecosaur.github.io/emacs-config/config.html
;; (defun doom-modeline-conditional-buffer-encoding ()
;;   "We expect the encoding to be LF UTF-8, so only show the modeline when this is not the case"
;;   (setq-local doom-modeline-buffer-encoding
;;               (unless (or (eq buffer-file-coding-system 'utf-8-unix)
;;                           (eq buffer-file-coding-system 'utf-8)))))
;; (add-hook 'after-change-major-mode-hook #'doom-modeline-conditional-buffer-encoding)

;; https://github.com/integral-dw/org-superstar-mode
(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;;; config.el ends here
