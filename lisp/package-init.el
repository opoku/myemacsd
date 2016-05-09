;; functions to load after packages are initialized
;; (when window-system
;;   (load-theme 'solarized-light))

(ido-ubiquitous-mode 1)
(require 'auto-complete-config)
(ac-config-default)

;;; M-x fuzzy matching and more
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; (global-pretty-lambda-mode 1)


;; (require 'erlang-start)
;; (require 'distel)
;; (distel-setup)

(require 'magit)


(autoload 'apples-mode "apples-mode" "Happy AppleScripting!" t)
(autoload 'apples-open-scratch "apples-mode" "Open scratch buffer for AppleScript." t)
(add-to-list 'auto-mode-alist '("\\.\\(applescri\\|sc\\)pt\\'" . apples-mode))

(setq inferior-lisp-program "sbcl --no-userinit")
(slime-setup '(slime-fancy slime-tramp))
(add-to-list 'slime-filename-translations
             (slime-create-filename-translator
              :machine-instance "rusty"
              :remote-host "rusty.opkoder.com"
              :username "opoku"))
