;; early-init.el --- Early Init File -*- lexical-binding: t -*-

;; Temporarily increase GC threshold during startup
(setq gc-cons-threshold most-positive-fixnum)

;; Restore to normal value after startup (e.g. 50MB)
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 50 1024 1024))))

;; Disable toolbars, menus, and other visual elements for faster startup:
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-screen t)

(setq mac-command-modifier 'meta)

;; Load themes early to avoid flickering during startup (you need a built-in theme, though)
;;(load-theme 'modus-vivendi t)
;;(load-theme 'wombat t)

;; tweak native compilation settings
(setq native-comp-speed 2)

;; remove backup files
(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files")))
