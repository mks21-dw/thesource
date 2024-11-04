#lang racket
#|
You can leave these variable definitions, and the
definitions of nth  and randElemnt alone.
|#
(define articles (list "the" "one"))
(define nouns (file->lines "nouns.txt"))
(define verbs (file->lines "verbs.txt"))
(define adjectives (file->lines "adjectives.txt"))

;list processing functions
(define nth
  (lambda (n g)
    (if (= n 0) (first g)
        (nth (- n 1) (rest g)))))
(define randElement
  (lambda (g)
    (if (null? g)
        '()
        (nth (random (length g)) g))))

#|
Sentence generator specific functions
each of these will return a random word of the
specified part of speech.
You should leave these alone as well.
|#
(define noun (lambda () (randElement nouns)))
(define verb (lambda () (randElement verbs)))
(define article (lambda () (randElement articles)))
(define adjective (lambda () (randElement adjectives)))


(define wordy-noun
  (lambda ()
    (if (= 0 (random 2))
      (list (noun))
      (cons (adjective) (wordy-noun)))))

(define noun-phrase
  (lambda ()
    (wordy-noun)))


(define verb-phrase
  (lambda ()
        (list (verb))))

(define sentence
  (lambda ()
    (string-join (append (noun-phrase) (verb-phrase)))))

(sentence)
