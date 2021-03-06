(require 'clojure-mode)
(require 'kibit-mode)

(add-hook 'nrepl-interaction-mode-hook 'my-nrepl-mode-setup)
(defun my-nrepl-mode-setup ()
  (require 'nrepl-ritz))


(defun mishok-pretty-partial ()
  (font-lock-add-keywords nil
                          `(("(\\(partial\\)[[:space:]]"
                             (0 (progn (compose-region (match-beginning 1)
                                                       (match-end 1)
                                                       "\u03a0"
                                                       'decompose-region)))))))

(defun mishok-pretty-comp ()
  (font-lock-add-keywords nil
                          `(("(\\(comp\\)[[:space:]]"
                             (0 (progn (compose-region (match-beginning 1)
                                                       (match-end 1)
                                                       "\u2218"
                                                       'decompose-region)))))))

(defun mishok-pretty-fn ()
  (font-lock-add-keywords nil
                          `(("(\\(\\<fn\\>\\)"
                             (0 (progn (compose-region (match-beginning 1)
                                                       (match-end 1)
                                                       "\u0192"
                                                       'decompose-region)))))))

(add-hook 'clojure-mode-hook 'mishok-pretty-fn)
(add-hook 'clojure-mode-hook 'mishok-pretty-partial)
(add-hook 'clojure-mode-hook 'mishok-pretty-comp)
(add-hook 'clojure-mode-hook 'fci-mode)
(add-hook 'clojure-mode-hook 'flycheck-mode)
(add-hook 'clojure-mode-hook 'kibit-mode)
