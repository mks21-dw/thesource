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


;Task 1 Question 0
(define wordy-noun
  (lambda ()
    (if (= 0 (random 2))
     (list (noun))
     (cons (adjective) (wordy-noun)))))

;Task 1 Question 1
(define noun-phrase
  (lambda ()
    (if (= 0 (random 2))
        (wordy-noun)
        (cons (article) (wordy-noun)))))

;Task 1 Question 2
(define verb-phrase
  (lambda ()
    (if (= 0 (random 2))
        (list (verb))
        (append (list (verb)) (noun-phrase)))))


(define sentence
  (lambda ()
    (string-join (append (noun-phrase) (verb-phrase)))))

(sentence)
