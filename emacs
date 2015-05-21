;; -*- mode: lisp -*-

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

(require 'init-constants)
(require 'init-general)
(require 'init-custom-functions)
(require 'init-sml)
(require 'init-ui)
(require 'init-packages)
(require 'init-keybindings)

;; init my packages configurations
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-path)
(require 'init-ruby)
(require 'init-web-mode)
(require 'init-company)
(require 'init-gitgutter)
(require 'init-neotree)
(require 'init-multi-term)
(require 'init-shell)
(require 'init-bindings)
(require 'init-smartparens)
(require 'init-expand-region)
(require 'init-org)
(require 'init-ace-jump)
(require 'init-dash)
(require 'init-auto-package-update)
(require 'init-wakatime)
(require 'init-yaml)
(require 'init-rinari)
(require 'init-guide-key)
(require 'init-evil)
