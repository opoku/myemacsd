(transient-mark-mode 1)
(savehist-mode 1)
(setq inhibit-splash-screen 1)
(show-paren-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode 0)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq-default indent-tabs-mode nil)

;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo -n $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
;; Testing this


(when window-system
  (set-exec-path-from-shell-PATH))

(setq ns-pop-up-frames nil)
(global-set-key (kbd "<f8>") 'toggle-truncate-lines)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(defun insert-the-date ()
  (interactive)
  (insert (shell-command-to-string "date")))

(global-set-key (kbd "C-c C-d") 'insert-the-date)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(defun customize-packages ()
  (load "package-init"))

(add-hook 'after-init-hook 'customize-packages)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector
;;    ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
;;  '(compilation-message-face (quote default))
;;  '(cua-global-mark-cursor-color "#2aa198")
;;  '(cua-normal-cursor-color "#657b83")
;;  '(cua-overwrite-cursor-color "#b58900")
;;  '(cua-read-only-cursor-color "#859900")
;;  '(custom-safe-themes
;;    (quote
;;     ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
;;  '(fci-rule-color "#eee8d5")
;;  '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
;;  '(highlight-symbol-colors
;;    (--map
;;     (solarized-color-blend it "#fdf6e3" 0.25)
;;     (quote
;;      ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
;;  '(highlight-symbol-foreground-color "#586e75")
;;  '(highlight-tail-colors
;;    (quote
;;     (("#eee8d5" . 0)
;;      ("#B4C342" . 20)
;;      ("#69CABF" . 30)
;;      ("#69B7F0" . 50)
;;      ("#DEB542" . 60)
;;      ("#F2804F" . 70)
;;      ("#F771AC" . 85)
;;      ("#eee8d5" . 100))))
;;  '(hl-bg-colors
;;    (quote
;;     ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
;;  '(hl-fg-colors
;;    (quote
;;     ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
;;  '(ido-ubiquitous-command-overrides
;;    (quote
;;     ((enable exact "execute-extended-command")
;;      (enable prefix "wl-")
;;      (enable-old prefix "Info-")
;;      (enable exact "webjump")
;;      (enable regexp "\\`\\(find\\|load\\|locate\\)-library\\'")
;;      (disable prefix "org-")
;;      (disable prefix "magit-")
;;      (disable prefix "tmm-")
;;      (enable regexp "\\`\\(load\\|enable\\|disable\\|describe\\|custom-theme-visit-theme\\)-theme\\'"))))
;;  '(magit-diff-use-overlays nil)
;;  '(magit-use-overlays nil)
;;  '(pos-tip-background-color "#eee8d5")
;;  '(pos-tip-foreground-color "#586e75")
;;  '(safe-local-variable-values
;;    (quote
;;     ((tags-table-list "~/Work/personal/erlang/dogbook_wm/src/root.TAGS"))))
;;  '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
;;  '(term-default-bg-color "#fdf6e3")
;;  '(term-default-fg-color "#657b83")
;;  '(vc-annotate-background nil)
;;  '(vc-annotate-color-map
;;    (quote
;;     ((20 . "#dc322f")
;;      (40 . "#c85d17")
;;      (60 . "#be730b")
;;      (80 . "#b58900")
;;      (100 . "#a58e00")
;;      (120 . "#9d9100")
;;      (140 . "#959300")
;;      (160 . "#8d9600")
;;      (180 . "#859900")
;;      (200 . "#669b32")
;;      (220 . "#579d4c")
;;      (240 . "#489e65")
;;      (260 . "#399f7e")
;;      (280 . "#2aa198")
;;      (300 . "#2898af")
;;      (320 . "#2793ba")
;;      (340 . "#268fc6")
;;      (360 . "#268bd2"))))
;;  '(vc-annotate-very-old-color nil)
;;  '(weechat-color-list
;;    (quote
;;     (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "#fdf6e3" :foreground "#657b83" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo")))))
;; (global-set-key "\M- " 'hippie-expand)

;; (add-to-list 'load-path "~/.emacs.d/distel/elisp")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#fdf6e3" :foreground "#657b83" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "nil" :family "Menlo")))))
