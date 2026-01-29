;; -*- emacs-lisp -*-


(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Improve startup performance 
(setq gc-cons-threshold (* 50 1000 1000))
;; Reset GC threshold to normal after startup
(add-hook 'emacs-startup-hook
          (lambda () (setq gc-cons-threshold (* 2 1000 1000))))

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; VARS
(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERAL SETTINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package emacs
  :init
  (setq inhibit-splash-screen t)
  (setq indent-tabs-mode nil)
  (tool-bar-mode 0)
  (menu-bar-mode 0)
  (scroll-bar-mode 0)
  (setq mac-command-modifier 'meta) ;; Mac specific
  ;; Enable disabled commands
  (put 'upcase-region 'disabled nil)
  (put 'downcase-region 'disabled nil)
  (put 'narrow-to-region 'disabled nil))

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(let ((local-lib (expand-file-name "~/local/lib/emacs")))
  (when (file-exists-p local-lib)
    (add-to-list 'load-path local-lib)))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package unicode-fonts
  :config
  (unicode-fonts-setup)
  )

(use-package which-key
  :config (which-key-mode))

(use-package catppuccin-theme
  :init (setq catppuccin-flavor 'mocha) 
  :config (load-theme 'catppuccin t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TOOLS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package magit
  :bind ("C-x g" . magit-status))

(use-package git-link
  :bind ("C-c k" . git-link))

(use-package git-timemachine
  :bind ("C-c t" . git-timemachine))

(use-package yasnippet
  :config
  (yas-global-mode 1)
  (setq yas-prompt-functions '(yas-dropdown-prompt yas-ido-prompt))
  :bind (:map yas-minor-mode-map
         ("TAB" . nil)
         ("<tab>" . nil)
         ("C-<tab>" . yas-expand-from-trigger-key)))

(use-package yasnippet-snippets)

(use-package company
  :hook (after-init . company-mode))

(use-package flycheck
  :init (global-flycheck-mode))

(use-package smart-compile
  :bind ("C-c c" . smart-compile))

(use-package exec-path-from-shell
  :if (display-graphic-p)
  :config (exec-path-from-shell-initialize))

(use-package misc
  :ensure nil  
  :bind ("M-z" . zap-up-to-char))

(use-package ultra-scroll
  :vc (:url "https://github.com/jdtsmith/ultra-scroll")
  :init
  (setq scroll-conservatively 101
        scroll-margin 0)
  :config
  (ultra-scroll-mode 1))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LANGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package haskell-mode
  :hook (haskell-mode . interactive-haskell-mode)
  :custom
  (haskell-process-type 'stack-ghci)
  (haskell-process-log t))

(use-package lsp-mode
  :hook ((haskell-mode . lsp)
         (haskell-literate-mode . lsp)
         (swarm-mode . lsp))
  :commands lsp
  :custom
  (lsp-haskell-formatting-provider "fourmolu"))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-haskell)


(use-package markdown-mode
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)))

(use-package poly-markdown
  :ensure polymode)

(use-package auctex
  :defer t
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t))

;; --- Additional Languages ---

(use-package rust-mode
  :mode "\\.rs\\'")

(use-package yaml-mode
  :mode "\\.yaml\\'")

(use-package editorconfig
  :config (editorconfig-mode 1))

(use-package vimish-fold
  :bind ("C-c v f" . vimish-fold))

(use-package attrap
  :bind ("C-c /" . attrap-flycheck)
  :config (setq attrap-flycheck-command-prefix "C-c /"))

(use-package highlight-indentation
  :hook ((yaml-mode . highlight-indentation-mode)
         (python-mode . highlight-indentation-mode)))

(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

(use-package writegood-mode
  :bind ("C-c g" . writegood-mode))

(use-package synosaurus
  :diminish synosaurus-mode
  :init (synosaurus-mode))


;; Auto-yasnippet (create snippets on the fly)
(use-package auto-yasnippet
  :bind (("C-c y a" . aya-create)
         ("C-c y e" . aya-expand)))


;; Dependencies 
(use-package haskell-snippets)
(use-package anaphora)
(use-package request)
(use-package gnu-elpa-keyring-update) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; YADA YADA YADA YADA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun toggle-window-split ()
  "Toggle between vertical and horizontal split."
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(defun touch ()
  "updates mtime on the file for the current buffer"
  (interactive)
  (shell-command (concat "touch " (shell-quote-argument (buffer-file-name))))
  (clear-visited-file-modtime))

(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring."
  (interactive "p")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (when mark-active
      (if (> (point) (mark))
          (setq beg (save-excursion (goto-char (mark)) (line-beginning-position)))
        (setq end (save-excursion (goto-char (mark)) (line-end-position)))))
    (if (eq last-command 'copy-line)
        (kill-append (buffer-substring beg end) (< end beg))
      (kill-ring-save beg end)))
  (beginning-of-line (or (and arg (1+ arg)) 2))
  (if (and arg (not (= 1 arg))) (message "%d lines copied" arg)))


(global-set-key (kbd "C-c C-k") 'copy-line) 

(add-hook 'emacs-startup-hook 'toggle-window-split)
(add-hook 'emacs-startup-hook (lambda () (when (fboundp 'ultra-scroll-mode) (ultra-scroll-mode 1))))



(provide 'init)
