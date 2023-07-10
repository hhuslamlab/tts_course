(defPhoneSet
  assignment_phones
  ;;;  Phone Features
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
   ;;                         dental velar glottal
   (cplace l a p b d v g 0)
   ;; consonant voicing
   (cvox + - 0)
   )
  ;; Phoneset members
  (
   (k   -   0   0   0   0   s   v   -)
   (uw  +   s   1   2   +   0   0   0)
   (sh  -   0   0   0   0   f   p   -)
   (ax  +   a   2   2   -   0   0   0)
   (l   -   0   0   0   0   l   a   +)
   (aa  +   l   3   1   -   0   0   0)
   (xh  -   0   0   0   0   f   v   -)
   (n   -   0   0   0   0   n   a   +)
   (ao  +   s   2   3   +   0   0   0)
   (p   -   0   0   0   0   s   l   -)
   (f   -   0   0   0   0   f   b   -)
  )
)

(PhoneSet.silences '(pau))


(lex.create "assignment_lex")

(lex.set.phoneset "assignment_phones")

(lex.set.lts.method 'lts_rules)
(lex.set.lts.ruleset 'nrl)

(lex.add.entry
 '("küche" n ((( k uw ) 1 ) (( sh ax ) 0 )) ))
(lex.add.entry
 '("lachen" v ((( l aa ) 1 ) (( xh ax n ) 0 )) ))
(lex.add.entry
 '("knopf" n ((( k n ao p f ) 1 )) ))


(define (voice_assignment)
"(voice_assignment)
Set up synthesis for assignment 2, a prototype for a German voice."
 (voice_reset)

 (Parameter.set 'Language 'german)

 (Parameter.set 'PhoneSet 'assignment_phones)
 (PhoneSet.select 'assignment_phones)

 (lex.select "assignment_lex")

 (Parameter.set 'Duration_Method 'Default)
 
 (cond
  ((or kal_di_16k kal_di_8k)
   (Parameter.set 'Synth_Method Diphone_Synthesize)
   (set! diphone_module_hooks (list kal_di_const_clusters ))
   (Diphone.select 'kal))
  (t
    (set! UniSyn_module_hooks (list kal_diphone_const_clusters ))
    (set! us_abs_offset 0.0)
    (set! window_factor 1.0)
    (set! us_rel_offset 0.0)
    (set! us_gain 0.9)

    (Parameter.set 'Synth_Method 'UniSyn)
    (Parameter.set 'us_sigpr kal_sigpr)
    (us_db_select kal_db_name)))

 (set! current-voice 'assignment)
)

(provide 'assignment)