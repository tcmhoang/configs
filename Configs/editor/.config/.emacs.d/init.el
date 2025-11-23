;; -*- emacs-lisp -*-


(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(defvar required-packages
  '(
    use-package
    magit
    yasnippet
    yasnippet-snippets
    java-snippets
    smart-compile
    rainbow-delimiters
    attrap
    darcsum
    company
    auto-complete
    markdown-mode
    request       ;; needed for beeminder
    seq           ;; needed for beeminder
    anaphora      ;; needed for beeminder
    synosaurus
    unicode-fonts
    writegood-mode
    auctex
    floobits
    kotlin-mode
    polymode
    poly-markdown
    auto-yasnippet
    vimish-fold
    which-key
    dash
    f
    flycheck
    magit-section
    s
    thingatpt
    editorconfig
    ef-themes
    highlight-indentation
    git-link
    git-timemachine
    ; Haskell
    lsp-mode
    lsp-ui
    lsp-ivy
    lsp-haskell
    haskell-snippets
   ) "a list of packages to ensure are installed at launch.")

; method to check if all packages are installed
(defun packages-installed-p ()
  (cl-loop for p in required-packages
        when (not (package-installed-p p)) do (cl-return nil)
        finally (cl-return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; Custom load path
(add-to-list 'load-path (expand-file-name "~/local/lib/emacs"))
(add-to-list 'load-path (expand-file-name "~/.local/lib/emacs"))
(add-to-list 'load-path (expand-file-name "~/local/share/emacs/site-lisp"))
(add-to-list 'load-path (expand-file-name "~/.local/share/emacs/site-lisp"))
(add-to-list 'load-path (expand-file-name "~/.local/lib/lean4-mode"))

;; A few other packages
(require 'beeminder)
(require 'swarm-mode)
(require 'lean4-mode)

;; git-link
;; https://mathstodon.xyz/@shapr@recurse.social/114553205283188145

(use-package git-link
  :ensure t
  :config (global-set-key (kbd "C-c k") 'git-link)
  )

(use-package git-timemachine
  :ensure t
  :config
  (global-set-key (kbd "C-c t") 'git-timemachine)
  )

(setq-default indent-tabs-mode nil)

