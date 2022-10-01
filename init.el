;; Line Mode
(global-display-line-numbers-mode 1)
;;Menu bars
(tool-bar-mode -1)
(global-ede-mode 1)
(menu-bar-mode 1)
(scroll-bar-mode -1)

;; Define and initialise package repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; use-package to simplify the config file
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)


(defalias 'yes-or-no-p 'y-or-n-p)

(use-package zoom
  :config
  (zoom-mode 1))
(use-package dimmer
  :config
  (dimmer-mode 1))
(use-package ivy
  :config
  (ivy-mode 1))
(use-package yasnippet
  :config
  (yas-global-mode 1))
(use-package all-the-icons
  :if (display-graphic-p))
(use-package emojify
  :config
  (global-emojify-mode 1))
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(use-package beacon
  :config
  (beacon-mode 1))

(define-key global-map "\C-cv" 'org-time-stamp)
(setq org-log-done t)

(tab-bar-mode 1)
(electric-pair-mode 1)
(show-paren-mode 1)
(auto-complete-mode 1)
(global-prettify-symbols-mode 1)
(setq prettify-symbols-alist '(("lambda" . 955)
                               ("->" . 8594)
                               ("->>" . 21A0)
                               ("=>" . 8658)
                               ("map" . 8614)
                               ("/=" . 2260)
                               ("==" . 2261)
                               ("<=" . 2264)
                               (">=" . 2265)
                               ("=<<" . 226A)
                               (">>=" . 226B)
                               ("<=<" . 21A2)
                               (">=>" . 21A3)
                               ("&&" . 2227)
                               ("||" . 2228)
                               ("not" . 00AC)))



;; Theme
(use-package inkpot-theme
  :config (load-theme 'inkpot t))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-use-virtual-buffers t)
 '(package-selected-packages
   '(beacon dashboard org-dashboard emojify treemacs-all-the-icons yasnippet magit zzz-to-char ivy auto-complete solaire-mode dimmer zoom use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
