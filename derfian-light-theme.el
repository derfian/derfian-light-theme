;; derfian-light-theme.el --- a light, low-contrast color theme for Emacs

;; Copyright © 2014      Karl Mikaelsson <derfian@hamsterkollektivet.se>

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(deftheme derfian-light
  "A light, low-contrast color theme with Tango colors")

(custom-theme-set-variables
 'derfian-light
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(font-use-system-font t)
 '(show-trailing-whitespace t))

;; Thanks, tango-theme.el!
(let* ((class '((class color) (min-colors 89)))
       ;; Tango palette colors.
       (butter-1 "#fce94f") (butter-2 "#edd400") (butter-3 "#c4a000")
       (orange-1 "#fcaf3e") (orange-2 "#f57900") (orange-3 "#ce5c00")
       (choc-1 "#e9b96e") (choc-2 "#c17d11") (choc-3 "#8f5902")
       (cham-1 "#8ae234") (cham-2 "#73d216") (cham-3 "#4e9a06")
       (blue-1 "#729fcf") (blue-2 "#3465a4") (blue-3 "#204a87")
       (plum-1 "#ad7fa8") (plum-2 "#75507b") (plum-3 "#5c3566")
       (red-1 "#ef2929")  (red-2 "#cc0000")  (red-3 "#a40000")
       (alum-1 "#eeeeec") (alum-2 "#d3d7cf") (alum-3 "#babdb6")
       (alum-4 "#888a85") (alum-5 "#5f615c") (alum-6 "#2e3436")
       ;; Not in Tango palette; used for better contrast.
       (cham-4 "#346604") (blue-0 "#8cc4ff") (orange-4 "#b35000")
       ;; Palette to generic names
       (global-bg alum-2)
       (global-fg alum-5))

  (custom-theme-set-faces
   'derfian-light
   `(default ((,class (:foreground ,global-fg :background ,global-bg))))
   `(fringe ((,class (:inherit linum))))
   `(trailing-whitespace ((,class (:background ,red-3))))
   `(highline-face ((,class (:background ,alum-2))))
   `(linum ((,class (:background ,alum-3 :foreground ,alum-2))))
   `(show-paren-mismatch ((,class (:background ,red-1 :foreground ,red-3))))
   `(show-paren-match ((,class (:background ,alum-3))))
   `(mode-line ((,class (:foreground ,alum-6 :background ,alum-3))))
   `(mode-line-highlight ((,class (:inherit mode-line))))
   `(mode-line-inactive ((,class (:foreground ,alum-4 :background ,alum-3))))

   ;; font-lock

   `(font-lock-builtin-face ((,class (:foreground ,blue-2))))
   `(font-lock-comment-face ((,class (:foreground ,orange-4))))
   `(font-lock-constant-face ((,class (:foreground ,blue-1))))
   `(font-lock-function-name-face ((,class (:foreground ,blue-1 :bold t))))
   `(font-lock-keyword-face ((,class (:foreground ,blue-3 :bold t))))
   `(font-lock-other-type-face ((,class (:foreground ,cham-2 :bold t))))
   `(font-lock-string-face ((,class (:foreground ,cham-4))))

   ;; font-lock-color-constant-face, font-lock-doc-face,
   ;; font-lock-doc-string-face, font-lock-negation-char-face,
   ;; font-lock-other-emphasized-face, font-lock-preprocessor-face,
   ;; font-lock-reference-face, font-lock-regexp-grouping-backslash,
   ;; font-lock-regexp-grouping-construct,
   ;; font-lock-special-keyword-face, font-lock-type-face,
   ;; font-lock-variable-name-face, font-lock-warning-face

   ;; outlines/org

   `(outline-1 ((,class (:foreground ,blue-3 :bold t))))
   `(outline-2 ((,class (:foreground ,blue-2 :bold t))))
   `(outline-3 ((,class (:foreground ,plum-3 :bold t))))
   `(outline-4 ((,class (:foreground ,plum-2 :bold t))))
   `(outline-5 ((,class (:foreground ,plum-1 :bold t))))
   `(outline-6 ((,class (:foreground ,choc-3 :bold t))))
   `(outline-7 ((,class (:foreground ,choc-2 :bold t))))
   `(outline-8 ((,class (:foreground ,blue-1 :bold t))))
   `(org-todo ((,class (:foreground ,red-3 :background ,red-1 :bold t))))
   `(org-done ((,class (:foreground ,cham-3 :background ,cham-1 :bold t))))
   `(org-table ((,class (:foreground ,blue-1))))

   ;; mu4e

   `(mu4e-contact-face ((,class (:foreground ,orange-3))))
   `(mu4e-draft-face ((,class (:foreground ,blue-1 :slant italic))))
   `(mu4e-flagged-face ((,class (:foreground ,butter-1 :background ,butter-3))))
   `(mu4e-forwarded-face ((,class (:inherit mu4e-replied-face ))))
   `(mu4e-replied-face ((,class (:foreground ,cham-3))))
   `(mu4e-trashed-face ((,class (:strike-through ,red-1))))
   `(mu4e-unread-face ((,class (:foreground ,blue-3 :bold t))))
   `(mu4e-cited-1-face ((,class (:foreground ,plum-1))))

   ;; mu4e-moved-face, mu4e-header-face, mu4e-header-title-face,
   ;; mu4e-header-highlight-face, mu4e-header-marks-face,
   ;; mu4e-header-key-face, mu4e-header-value-face,
   ;; mu4e-special-header-value-face, mu4e-link-face,
   ;; mu4e-contact-face, mu4e-highlight-face, mu4e-title-face,
   ;; mu4e-footer-face, mu4e-url-number-face, mu4e-attach-number-face,
   ;; mu4e-cited-2-face, mu4e-cited-3-face, mu4e-cited-4-face,
   ;; mu4e-cited-5-face, mu4e-cited-6-face, mu4e-cited-7-face,
   ;; mu4e-system-face, mu4e-ok-face, mu4e-warning-face,
   ;; mu4e-compose-separator-face, mu4e-compose-header-face

   ;; message

   `(message-cited-text ((,class (:inherit mu4e-cited-1-face))))

   ;; message-header-from
   ;; message-header-name
   ;; message-header-newsgroups
   ;; message-header-other
   ;; message-header-subject
   ;; message-header-to
   ;; message-header-xheader
   ;; message-mml
   ;; message-separator

   ;; flyspell

   `(flyspell-incorrect ((,class (:underline (:color ,red-1 :style wave)))))
   `(flyspell-duplicate ((,class (:inherit flyspell-incorrect))))

   ))

(provide-theme 'derfian-light)

