;; -*- mode: lisp -*-


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "vendor" user-emacs-directory))

(require 'init-secrets)
(require 'init-constants)
(require 'init-packages)
(require 'init-general)
(require 'init-custom-functions)
(require 'init-ui)
(require 'init-keybindings)
(require 'init-mac-switch-meta)
(require 'init-smerge)

;; init my packages configurations
(require 'init-highlight-symbol)
(require 'init-anzu)
(require 'init-sml)
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-path)
(require 'init-rbenv)
(require 'init-ruby)
(require 'init-web-mode)
(require 'init-easy-kill)
(require 'init-company)
(require 'init-gitgutter)
(require 'init-shell)
(require 'init-eshell)
(require 'init-ido)
(require 'init-bindings)
(require 'init-smartparens)
(require 'init-org)
(require 'init-dash)
(require 'init-wakatime)
(require 'init-yaml)
(require 'init-guide-key)
(require 'init-flycheck)
(require 'init-restclient)
(require 'init-avy)
(require 'init-yasnippet)
(require 'init-twittering-mode)

;; init vendor files
(require 'vkill)
(require 'init-erc)
