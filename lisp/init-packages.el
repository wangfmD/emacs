(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
				   ("melpa" . "http://elpa.emacs-china.org/melpa/")) t )
)
(defvar my/packages '(
                company
                hungry-delete
		swiper
                counsel
                smartparens
		popwin
		;; js2-mode
                ;; --- Minor Mode ---
                ;; nodejs-repl
                ;; exec-path-from-shell
                ;; --- Themes ---
		monokai-theme
                ;; solarized-theme
                ) "Default packages")

;; m-x pa-a ->tab
(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

(unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

(when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))


;; C-h v enter q可以退出
(require 'popwin)
(popwin-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; 括号补全
(require 'smartparens-config)
;; (add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(require 'hungry-delete)
(global-hungry-delete-mode t)
(global-auto-revert-mode t)

(global-company-mode 1)
(load-theme 'monokai t)



(provide 'init-packages)
