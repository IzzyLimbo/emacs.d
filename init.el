;;
;;
;; ===== add for use package, eq. M-x package-install
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
;; ===== 80 column highlight =====
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa/column-marker/"))
(require 'column-marker)
(add-hook 'foo-mode-hook (lambda () (interactive) (column-marker-1 80)))
(global-set-key [?\C-c ?m] 'column-marker-1)
;;
;;
;; ===== 把游標設成一條槓 =====
(setq-default cursor-type 'bar)
;;
;;
;; ===== add my custom el file path =====
(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-custom"))
;; ===== my custom el setting =====
;;(require 'my_color_theme)
(require 'my_font_set)
;;
;;
;; ===== 縮排設定 =====
(setq c-default-style "linux")
(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)
;;
;;
;; ===== add for 80 column highlight =====
(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-custom"))
(require 'highlight-80+)
;;
;;
;; ===== add for google c coding style =====
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-custom"))
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;
;;
;; ===== add for auto-complete =====
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4.20110207/dict/")
(ac-config-default)
;;
;;
;; ===== open tabbar-mode =====
;;(tabbar-mode 1)
;;
;;
;; ===== enable tabbar-ruler =====
(setq EmacsPortable-global-tabbar 't) ;; 開啟標籤欄支持
;; (setq EmacsPortable-global-ruler 't)  ;; 開啟全局標尺
(setq EmacsPortable-popup-menu 't)    ;; 彈出式菜單
;; (setq EmacsPortable-popup-toolbar 't) ;; 彈出式工具欄
(require 'tabbar-ruler)
;;
;;
;; ===== add for use color theme =====
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
       (color-theme-tangotango) ;;(color-theme-gtk-ide) ;;(color-theme-gray30) ;;(color-theme-dark-laptop) ;;(color-theme-charcoal-black)
     ))
;;
;;
;; ====== add for project-mode
(add-to-list 'load-path "~/.emacs.d/elpa/project-mode-1.0/")
(require 'project-mode)
;;
;;
;; ===== add for CEDET ====
(require 'cedet)
(require 'eieio)
(require 'semantic)
(require 'srecode)
(require 'ede)
(require 'speedbar)
;;
;;
;; ===== add for cscope =====
;; (require 'xcscope)
;;
;;
;; ===== add require for ecb =====
(add-to-list 'load-path "~/.emacs.d/elpa/ecb-2.40/")
(setq stack-trace-on-error t)
(require 'ecb)
(require 'ecb-autoloads)
;;
;;
;; ===== for ecb easy use key mapping
(global-set-key (kbd "<M-left>") 'ecb-goto-window-methods)
(global-set-key (kbd "<M-right>") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-c C-e") 'ecb-activate)
(global-set-key (kbd "C-c C-x C-e" ) 'ecb-deactivate)
;;
;;
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
