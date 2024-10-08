;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-ayu-dark)
;; (setq doom-theme 'kanagawa)
;; (setq doom-theme 'catppuccin-mocha)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.





(add-to-list 'load-path "/usr/local/Cellar/maxima/5.25.1/share/maxima/5.25.1/emacs")
(require 'maxima)


(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(display-time-mode t)

(set-face-foreground 'font-lock-comment-face "#a3a3a3")


;; (require 'exwm)
;; (require 'exwm-config)
;; (exwm-config-example)



;; ;; EMACS X WINDOW MANAGER
;; (require 'exwm)
;; (require 'exwm-config)
;; (exwm-config-example)
;; (require 'exwm-randr)
;; (setq exwm-randr-workspace-monitor-plist '(0 "Screen 0"))
;; (add hook 'exwm-randr-screen-change-hook
;;         (lambda ()
;;           (start-process-shell-command
;;            "xrandr" nil "xrandr --output Screen 0 --mode 1440x876 --pos 0x0 --rotate normal")))
;; ;; (exwm-randr-enable)
;; ;; (require 'exwm-systemtray)
;; ;; (exwm-systemtray-enable)


;; ;; Disable menu-bar, tool-bar and scroll-bar to increase the usable space.
;; (menu-bar-mode -1)
;; (tool-bar-mode -1)
;; (scroll-bar-mode -1)
;; ;; Also shrink fringes to 1 pixel.
;; (fringe-mode 1)

;; ;; Turn on `display-time-mode' if you don't use an external bar.
;; (setq display-time-default-load-average nil)
;; (display-time-mode t)

;; ;; You are strongly encouraged to enable something like `ido-mode' to alter
;; ;; the default behavior of 'C-x b', or you will take great pains to switch
;; ;; to or back from a floating frame (remember 'C-x 5 o' if you refuse this
;; ;; proposal however).
;; ;; You may also want to call `exwm-config-ido' later (see below).
;; (ido-mode 1)

;; ;; Emacs server is not required to run EXWM but it has some interesting uses
;; ;; (see next section).
;; (server-start)

;; ;;;; Below are configurations for EXWM.

;; ;; Add paths (not required if EXWM is installed from GNU ELPA).
;; ;(add-to-list 'load-path "/path/to/xelb/")
;; ;(add-to-list 'load-path "/path/to/exwm/")

;; ;; Load EXWM.
;; (require 'exwm)

;; ;; Fix problems with Ido (if you use it).
;; (require 'exwm-config)
;; (exwm-config-ido)

;; ;; Set the initial number of workspaces (they can also be created later).
;; (setq exwm-workspace-number 4)

;; ;; All buffers created in EXWM mode are named "*EXWM*". You may want to
;; ;; change it in `exwm-update-class-hook' and `exwm-update-title-hook', which
;; ;; are run when a new X window class name or title is available.  Here's
;; ;; some advice on this topic:
;; ;; + Always use `exwm-workspace-rename-buffer` to avoid naming conflict.
;; ;; + For applications with multiple windows (e.g. GIMP), the class names of
;; ;    all windows are probably the same.  Using window titles for them makes
;; ;;   more sense.
;; ;; In the following example, we use class names for all windows except for
;; ;; Java applications and GIMP.
;; (add-hook 'exwm-update-class-hook
;;           (lambda ()
;;             (unless (or (string-prefix-p "sun-awt-X11-" exwm-instance-name)
;;                         (string= "gimp" exwm-instance-name))
;;               (exwm-workspace-rename-buffer exwm-class-name))))
;; (add-hook 'exwm-update-title-hook
;;           (lambda ()
;;             (when (or (not exwm-instance-name)
;;                       (string-prefix-p "sun-awt-X11-" exwm-instance-name)
;;                       (string= "gimp" exwm-instance-name))
;;               (exwm-workspace-rename-buffer exwm-title))))

;; ;; Global keybindings can be defined with `exwm-input-global-keys'.
;; ;; Here are a few examples:
;; (setq exwm-input-global-keys
;;       `(
;;         ;; Bind "s-r" to exit char-mode and fullscreen mode.
;;         ([?\s-r] . exwm-reset)
;;         ;; Bind "s-w" to switch workspace interactively.
;;         ([?\s-w] . exwm-workspace-switch)
;;         ;; Bind "s-0" to "s-9" to switch to a workspace by its index.
;;         ,@(mapcar (lambda (i)
;;                     `(,(kbd (format "s-%d" i)) .
;;                       (lambda ()
;;                         (interactive)
;;                         (exwm-workspace-switch-create ,i))))
;;                   (number-sequence 0 9))
;;         ;; Bind "s-&" to launch applications ('M-&' also works if the output
;;         ;; buffer does not bother you).
;;         ([?\s-&] . (lambda (command)
;; 		     (interactive (list (read-shell-command "$ ")))
;; 		     (start-process-shell-command command nil command)))
;;         ;; Bind "s-<f2>" to "slock", a simple X display locker.
;;         ([s-f2] . (lambda ()
;; 		    (interactive)
;; 		    (start-process "" nil "/usr/bin/slock")))))

;; ;; To add a key binding only available in line-mode, simply define it in
;; ;; `exwm-mode-map'.  The following example shortens 'C-c q' to 'C-q'.
;; (define-key exwm-mode-map [?\C-q] #'exwm-input-send-next-key)

;; ;; The following example demonstrates how to use simulation keys to mimic
;; ;; the behavior of Emacs.  The value of `exwm-input-simulation-keys` is a
;; ;; list of cons cells (SRC . DEST), where SRC is the key sequence you press
;; ;; and DEST is what EXWM actually sends to application.  Note that both SRC
;; ;; and DEST should be key sequences (vector or string).
;; (setq exwm-input-simulation-keys
;;       '(
;;         ;; movement
;;         ([?\C-b] . [left])
;;         ([?\M-b] . [C-left])
;;         ([?\C-f] . [right])
;;         ([?\M-f] . [C-right])
;;         ([?\C-p] . [up])




;;         ([?\C-n] . [down])
;;         ([?\C-a] . [home])
;;         ([?\C-e] . [end])
;;         ([?\M-v] . [prior])
;;         ([?\C-v] . [next])
;;         ([?\C-d] . [delete])
;;         ([?\C-k] . [S-end delete])
;;         ;; cut/paste.
;;         ([?\C-w] . [?\C-x])
;;         ([?\M-w] . [?\C-c])
;;         ([?\C-y] . [?\C-v])
;;         ;; search
;;         ([?\C-s] . [?\C-f])))

;; ;; You can hide the minibuffer and echo area when they're not used, by
;; ;; uncommenting the following line.
;; ;(setq exwm-workspace-minibuffer-position 'bottom)

;; ;; Do not forget to enable EXWM. It will start by itself when things are
;; ;; ready.  You can put it _anywhere_ in your configuration.
;; (exwm-enable)




(defvar elpaca-installer-version 0.7)
(defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
(defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
(defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
(defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
                              :ref nil :depth 1
                              :files (:defaults "elpaca-test.el" (:exclude "extensions"))
                              :build (:not elpaca--activate-package)))
(let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
       (build (expand-file-name "elpaca/" elpaca-builds-directory))
       (order (cdr elpaca-order))
       (default-directory repo))
  (add-to-list 'load-path (if (file-exists-p build) build repo))
  (unless (file-exists-p repo)
    (make-directory repo t)
    (when (< emacs-major-version 28) (require 'subr-x))
    (condition-case-unless-debug err
        (if-let ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
                 ((zerop (apply #'call-process `("git" nil ,buffer t "clone"
                                                 ,@(when-let ((depth (plist-get order :depth)))
                                                     (list (format "--depth=%d" depth) "--no-single-branch"))
                                                 ,(plist-get order :repo) ,repo))))
                 ((zerop (call-process "git" nil buffer t "checkout"
                                       (or (plist-get order :ref) "--"))))
                 (emacs (concat invocation-directory invocation-name))
                 ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
                                       "--eval" "(byte-recompile-directory \".\" 0 'force)")))
                 ((require 'elpaca))
                 ((elpaca-generate-autoloads "elpaca" repo)))
            (progn (message "%s" (buffer-string)) (kill-buffer buffer))
          (error "%s" (with-current-buffer buffer (buffer-string))))
      ((error) (warn "%s" err) (delete-directory repo 'recursive))))
  (unless (require 'elpaca-autoloads nil t)
    (require 'elpaca)
    (elpaca-generate-autoloads "elpaca" repo)
    (load "./elpaca-autoloads")))
(add-hook 'after-init-hook #'elpaca-process-queues)
(elpaca `(,@elpaca-order))

(atomic-chrome-start-server)




;;;###autoload
(add-to-list 'auto-mode-alist (cons (purecopy "\\.mac[iw]?\\'") 'maxima-mode))


(add-to-list 'load-path "~/emacs-load-path")

(server-start)


;; (use-package welcome-dashboard
;;   :elpaca (:host github :repo "konrad1977/welcome-dashboard")
;;   :after nerd-icons
;;   :config
;;   Use nerd icons instead of all-the-icons
;;   (setq welcome-dashboard-use-nerd-icons t)
;;   (setq welcome-dashboard-path-max-length 75)
;;   show in celcius or fahrenheit.
;;   (setq welcome-dashboard-use-fahrenheit nil)
;;   (setq welcome-dashboard-min-left-padding 10)
;;   logo
;;   (setq welcome-dashboard-image-file "~/.config/emacs/emacs.png")
;;   (setq welcome-dashboard-image-width 200)
;;   (setq welcome-dashboard-image-height 169)
;;   (setq welcome-dashboard-title "Welcome XDream8. Have a great day!")
;;   (welcome-dashboard-create-welcome-hook))


(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred




(setq confirm-kill-emacs nil)

;; BACKGROUND TRANSPARENCY
(set-frame-parameter nil 'alpha-background 89) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 89)) ; For all new frames henceforth
