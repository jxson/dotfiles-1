;;Path to lisp code
(setq load-path (cons (expand-file-name "~/.emacs-lisp/") (cons (expand-file-name "/opt/local/share/emacs/site-lisp") load-path)))

;; Line Numbers
(require 'linum)
(global-linum-mode 1)

;; Mouse Mode
(xterm-mouse-mode)

;; Scroll on wheel of mouses
(defun up-slightly () (interactive) (scroll-up 1))
(defun down-slightly () (interactive) (scroll-down 1))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)


;; Show marked text
(transient-mark-mode t)

;; Show column number in info area
(column-number-mode t)


;; Espresso
(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))


;; JS2
;;(autoload 'js2-mode "js2" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;;AucTeX:
(load "auctex.el" nil t t)
(require 'tex-site)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

;;eBib BibTeX manager
(autoload 'ebib "ebib" "Ebib, a BibTeX database manager." t)
(global-set-key "\C-ce" 'ebib)

;;fix backspace/delete
(keyboard-translate ?\C-h ?\C-?)

;;Tuareg Mode
;;(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist)) 
;;(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t) 
;;(autoload 'tuareg-run-caml "tuareg" "interactive Caml mode" t) 
;;(autoload 'camldebug "camldebug" "Run the Caml debugger" t) 
;;(if (and (boundp 'window-system) window-system) (require 'font-lock)) 
;;(global-set-key "\C-x\C-o" 'tuareg-run-caml)



;;Python-mode
;;(autoload 'python-mode "python-mode" "Python Mode." t)
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'interpreter-mode-alist '("python" . python-mode))


;;Javascript
;;(autoload 'espresso-mode "espresso" "Start espresso-mode" t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
;; (add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))


;;Color-Themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-clarity)



;;Aspell
(setq-default ispell-program-name "/opt/local/bin/aspell")
(global-set-key "\M-\;" 'ispell-buffer)

;;a2ps 
(load "a2ps-print")
(global-set-key "\C-P" 'a2ps-buffer);f22 is Print Screen
;(global-set-key '(shift f22) 'a2ps-region-1);print selected text
;(add-menu-button '("File") ["a2ps-print" 'a2ps-buffer "--"]) ;on file menu

;;ChucK
;;(setq auto-mode-alist
;;(cons '("\\.ck$" . chuck-mode) auto-mode-alist))
;;(autoload 'chuck-mode "chuck-mode" "ChucK editing mode" t )

;;Octave
;;(autoload 'octave-mode "octave-mod" nil t)
;;(setq auto-mode-alist
;;      (cons '("\\.m$" . octave-mode) auto-mode-alist))

;;(add-hook 'octave-mode-hook
;;          (lambda ()
;;            (abbrev-mode 1)
;;            (auto-fill-mode 1)
;;            (if (eq window-system 'x)
;;                (font-lock-mode 1))))


;; Turn off bell
(setq visible-bell t)


;;Supress startup message 
(setq inhibit-startup-message   t)   

;;Helpfull keys
(global-set-key [kp-7]     'beginning-of-line)  ; [Home]
(global-set-key [kp-1]      'end-of-line)       ; [End]
(global-set-key [PgUp]    'my-scroll-down)      ; [PgUp]
(global-set-key [PgDn]     'my-scroll-up)       ; [PgDn] 
(global-set-key "\^l" 'goto-line)               ; [Ctrl]-[L] 
(global-set-key "\^c\^t\^c" `comment-region)  
(global-set-key "\^c\^t\^u" `uncomment-region)  

;;;;;END MY CONFS

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(espresso-enabled-frameworks (quote (javascript)))
 '(espresso-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(js2-mirror-mode nil)
 '(js2-mode-indent-ignore-first-tab nil)
 '(js2-mode-show-parse-errors nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
