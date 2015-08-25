;;; init-restclient.el --- My restclient configurations
;;; Commentary:
;;; Code:

(require 'restclient)

;; set restclient-mode to files with .restclient extension
(add-to-list 'auto-mode-alist '("\\.restclient$" . restclient-mode))

(eval-after-load 'restclient-mode
  '(progn
     (define-key restclient-mode-map (kbd "M-n") 'restclien-jump-next)
     (define-key restclient-mode-map (kbd "M-p") 'restclien-jump-prev)))

(provide 'init-restclient)
;;; init-restclient.el ends here