
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


;; 关闭工具栏，tool-bar-mode 即为一个 Minor Modey
(tool-bar-mode -1)
(setq ring-bell-function 'ignore)
(global-linum-mode 1)
(set-default-font "新宋体 12")
(delete-selection-mode t)
;; 行高亮
(global-hl-line-mode t)

;; 关闭启动画面
(setq inhibit-splash-screen t)

;; 关闭文件滚动条
(scroll-bar-mode -1)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

(setq-default cursor-type 'bar)
(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-items 10)
;; (global-set-key (kbd "C-x C-r") 'recentf-open-files)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode) ;; 匹配括号



(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)
(global-set-key (kbd "C-h C-v") 'find-variable)

(setq org-agenda-files '("~/org"))
	(global-set-key (kbd "C-c a") 'org-agenda)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("wfm" "wangfaming")
					    ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 2)
 '(company-tooltip-idle-delay 0.05)
 '(custom-safe-themes
   (quote
    ("9492cf1ac00c8a1f7130a867a97404dfeb6727801c6b2b40b853b91543f7af67" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
