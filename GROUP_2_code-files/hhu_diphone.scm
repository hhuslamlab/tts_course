;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This file "imitates" the kal_diphone.scm file (in a minimal way).
;; kal_diphone.scm is located in /usr/share/festival/voices/english/kal_diphone/festvox/


;; setup lexicon (probably compiling the file containing the lexicon)
(setup_hhu_lex)
;;(require 'hhu_phones)

;; define a new voice:
(define (voice_hhu_diphone)
  ;; voice_reset probably resets any current parameters first:  
    (voice_reset)
  ;; Phones (to be taken from our new phones file):
    (require 'hhu_phones)
    (Parameter.set 'PhoneSet 'hhuphon)
    (PhoneSet.select 'hhuphon)
  ;; Lexicon (can be used now, as the file is compiled above):
    (lex.select "hhulex")
  ;; set durations to default:
    (Parameter.set 'Duration_Method 'Default)
  ;; Voice:
    (set! current-voice 'hhu_diphone)
)


;; (probably) makes sure that hhu_diphone can be called from outside this file (this command appears at the end of every scm file I have seen so far):
(provide 'hhu_diphone)
