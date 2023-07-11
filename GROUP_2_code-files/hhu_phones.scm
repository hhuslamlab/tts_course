(defPhoneSet
hhuphon
;;; Phone Features
(;; vowel or consonant
(vc + -)
;; vowel length: short long dipthong schwa
(vlng s l d a 0)
;; vowel height: high mid low
(vheight 1 2 3 0)
;; vowel frontness: front mid back
(vfront 1 2 3 0)
;; lip rounding
(vrnd + - 0)
;; consonant type: stop fricative affricate nasal lateral approximant
(ctype s f a n l r 0)
;; place of articulation: labial alveolar palatal labio-dental
;; dental velar glottal
(cplace l a p b d v g 0)
;; consonant voicing
(cvox + - 0)
)
;; Phone set members
;; @Xaver: incomplete and not tested yet!
(
;; vowels
    (ah  +  s   3   3   -   0   0   0) ;; short a
    (aa  +  l   3   3   -   0   0   0) ;; long a
    (eh  +  s   2   2   -   0   0   0) ;; short e
    (ee  +  l   2   2   -   0   0   0) ;; long e
    (ih  +  s   1   1   -   0   0   0) ;; short i
    (iy  +  l   1   1   -   0   0   0) ;; long i
    (ao  +  s   3   3   +   0   0   0) ;; short o
    (ow  +  l   3   3   +   0   0   0) ;; long o
    (uh  +  s   2   3   +   0   0   0) ;; short u
    (uw  +  l   2   3   +   0   0   0) ;; long u
    (ae  +  s   3   1   -   0   0   0) ;; ae Umlaut ;; not set yet
    (er  +  l   2   2   -   0   0   0) ;; oe Umlaut
    (ux  +  s   1   1   +   0   0   0) ;; ue Umlaut

;; consonants
    (m  -   0   0   0   0   n   l  +)
    (b  -   0   0   0   0   s   l  +)
    (p  -   0   0   0   0   s   l  -)
    (ng -   0   0   0   0   n   v  +)
    (g  -   0   0   0   0   s   p  +)
    (k  -   0   0   0   0   s   p  -)
    (n  -   0   0   0   0   n   a  +)
    (d  -   0   0   0   0   s   a  +)
    (t  -   0   0   0   0   s   p  -)
    (s  -   0   0   0   0   f   a  -)
    (z  -   0   0   0   0   f   a  +)
    (sh -   0   0   0   0   f   p  -) ;; sch
    (tsh -  0   0   0   0   a   p  -)
    (kh -   0   0   0   0   f   p  -) ;; ch wie in ich
    (hh -   0   0   0   0   f   g  -) ;; h wie in hallo
    (f  -   0   0   0   0   f   b  -)
    (v  -   0   0   0   0   f   b  +)
    (l  -   0   0   0   0   r   a  +)
    (r  -   0   0   0   0   l   a  +)

    ;; pause
    (pau  -   0   0   0   0   0   0   -)
    (h#   -   0   0   0   0   0   0   -)
    (brth -   0   0   0   0   0   0   -)
)
)

(PhoneSet.silences '(pau h# brth))
(provide 'hhu_phones)
