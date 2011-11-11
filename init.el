;;
;;
;;add for use package eq. M-x package-install
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
;;
;;
;; ===== open line number =====
(global-linum-mode 1)
;;
;;
;; ===== open tabbar-mode =====
;;(tabbar-mode 1)
;;
;;
;; ===== open tabbar-ruler =====
(setq EmacsPortable-global-tabbar 't) ;; open tabbar
(setq EmacsPortable-global-ruler 't)  ;; open ruler
(setq EmacsPortable-popup-menu 't)    ;; open menu
(setq EmacsPortable-popup-toolbar 't) ;; open toolbar
(require 'tabbar-ruler)
;;
;;
;; ===== add for auto-complete =====
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4.20110207/dict/")
(ac-config-default)
;;
;;
;; ===== add my custom el file path =====
(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-custom"))
;; ===== my custom el setting =====
;;(require 'my_color_theme)
(require 'my_font_set)
;;
;;
;; ===== add for use color theme =====
(add-to-list 'load-path "/home/ozzylin/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
          (color-theme-charcoal-black)))
