(defPhoneSet
whatever
;;; Phone Features
(;; vowel or consonant
(vc + -)
;; vowel length: short long diphthong schwa
(vlng s l d a 0)
;; vowel height: high mid low
(vheight 1 2 3 -)
;; vowel frontness: front mid back
(vfront 1 2 3 -)
;; lip rounding
(vrnd + -)
;; consonant type: stop fricative affricative nasal liquid
(ctype s f a n l 0)
;; place of articulation: labial alveolar palatal labio-dental
;; dental velar
(cplace l a p b d v 0)
;; consonant voicing
(cvox + -)
)
;; Phone set members (features are not! set properly)
(
(# - 0 - - - 0 0 -)
(a + l 3 1 - 0 0 -)
(e + l 2 1 - 0 0 -)
(i + l 1 1 - 0 0 -)
(o + l 3 3 - 0 0 -)
(u + l 1 3 + 0 0 -)
(b - 0 - - + s l +)
(ch - 0 - - + a a -)
(d - 0 - - + s a +)
(f - 0 - - + f b -)
(g - 0 - - + s p +)
(j - 0 - - + l a +)
(k - 0 - - + s p -)
(l - 0 - - + l d +)
(ll - 0 - - + l d +)
(m - 0 - - + n l +)
(n - 0 - - + n d +)
(ny - 0 - - + n v +)
(p - 0 - - + s l -)
(r - 0 - - + l p +)
(rr - 0 - - + l p +)
(s - 0 - - + f a +)
(t - 0 - - + s a +)
(th - 0 - - + f d +)
(x - 0 - - + a a -)
)
)
(PhoneSet.silences '(#))

(lex.create "whatever")

(lex.set.phoneset "whatever")

(lex.add.entry
   '("amigos" n (((a) 0) ((m i) 1) (g o s) 0)))

(lex.add.entry
   '("hola" n (((o) 1) ((l a) 0))))

(lex.select "whatever")

(Parameter.set 'Duration_Method 'Default)









