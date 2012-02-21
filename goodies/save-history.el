;; Save history

(require 'desktop)

(desktop-save-mode 1)
(setq history-length 250)

(add-to-list 'desktop-globals-to-save 'file-name-history)

(add-to-list 'desktop-modes-not-to-save 'dired-mode)
(add-to-list 'desktop-modes-not-to-save 'Info-mode)
(add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
(add-to-list 'desktop-modes-not-to-save 'fundamental-mode)
