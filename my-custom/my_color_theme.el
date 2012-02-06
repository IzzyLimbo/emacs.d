(provide 'my_color_theme)
;;====================
;; 顏色設置
;;;====================

;; 指針顏色
(set-cursor-color "white")
;; 鼠標顏色
(set-mouse-color "blue")
;; 背景和字體顏色
(set-foreground-color "lightblue")
(set-background-color "black")
(set-border-color "lightgreen")

;; 語法高亮顯示，區域選擇，二次選擇 
;;前景和背景色
(set-face-foreground 'highlight "red")
(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
