(require 'package)

(add-to-list 'package-archives 
  '("melpa" . "http://melpa.milkbox.net/packages/")
  '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))


(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(unless (package-installed-p 'auto-package-update)
  (package-install 'auto-package-update))
(auto-package-update-maybe)


(require 'org)
(org-babel-load-file "~/.emacs.d/emacs-config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (evil-markdown all-the-icons-dired dired-sidebar hlinum use-package simpleclip powerline-evil exec-path-from-shell evil-org evil-leader color-theme-approximate beacon badger-theme auto-package-update))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch ((t (:weight normal :height 160 :family "Fira Code"))))
 '(org-level-1 ((t (:inherit outline-1 :family "Cormorant Garamond" :slant italic :foreground "#F5F7FA" :height 1.5))))
 '(org-level-2 ((t (:inherit outline-2 :family "Rubik" :foreground "#EBCB8B" :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :family "Rubik" :foreground "#D08770" :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :family "Rubik" :foreground "#8FBCBB" :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :family "Rubik" :foreground "systemPinkColor" :height 1.0))))
 '(variable-pitch ((t (:weight normal :height 180 :family "Fira Sans")))))
