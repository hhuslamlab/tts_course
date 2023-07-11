;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;; this file "imitates" the cmulex.scm file (which can be found in /usr/share/festival/dicts/cmu/ )
(require 'hhu_phones)
(Parameter.set 'PhoneSet 'hhuphon)
(PhoneSet.select 'hhuphon)
(lex.set.phoneset "hhuphon")
;; define the lexicon

;; first add new words
;; the spelling/syllabification should only contain phonemes that are defined in our phoneSet
(define (hhulex_addenda)
  (lex.add.entry '("Bus"        nil (((b uh s) 0))))
  (lex.add.entry '("Apfel"      nil (((ah p) 1) ((f eh l) 0))))
  (lex.add.entry '("Titanic"    nil (((t iy) 0) ((t aa) 1) ((n ih k) 0))))
  (lex.add.entry '("Busch"      nil (((b uh sh) 0))))
  (lex.add.entry '("studieren"  nil (((sh t uw) 0) ((d iy ah n) 1))))
  (lex.add.entry '("Uni"        nil (((uh) 1) ((n iy) 0))))
  (lex.add.entry '("Sonntag"    nil (((z ao n) 1) ((t aa th) 1))))
  (lex.add.entry '("Fastenzeit" nil (((f ah s t n) 1) ((t s aa iy t) 0))))
  (lex.add.entry '("Mango"      nil (((m ah ng) 1) ((g ow) 0))))
  (lex.add.entry '("beliebig"   nil (((b eh) 0) ((l iy) 1) ((b ih k) 0))))
  (lex.add.entry '("hallo"      nil (((hh aa) 1) ((l ow ow) 0))))
  (lex.add.entry '("ich"        nil (((ih sh) 1))))
  (lex.add.entry '("bin"        nil (((b ih n) 1))))
  (lex.add.entry '("kein"       nil (((k aa iy n) 1))))
  (lex.add.entry '("echter"     nil (((eh sh) 1) ((t ah) 0))))
  (lex.add.entry '("Mensch"     nil (((m eh n sh) 1))))
  (lex.add.entry '("sondern"    nil (((s ao n) 1) ((d ah n) 0))))
  (lex.add.entry '("eine"       nil (((aa iy) 1) ((n eh) 0))))
  (lex.add.entry '("K"          nil (((k aa) 1))))
  (lex.add.entry '("I"          nil (((iy) 1))))
  (lex.add.entry '("Du"         nil (((d uw) 1))))
  (lex.add.entry '("Bist"       nil (((b ih s t) 1))))
  (lex.add.entry '("an"         nil (((ah n) 0))))
  (lex.add.entry '("der"        nil (((d eh r) 0))))
)


(lex.create "hhulex")

(lex.set.phoneset "hhuphon")
;; ??? begin
;;(lex.set.lts.method 'oald_lts_function)
;;(lex.set.pos.map english_pos_map_wp39_to_wp20)
;; ??? end
(hhulex_addenda)

(provide 'hhulex)
