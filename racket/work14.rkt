#lang racket
(define randList
  (lambda (n maxValue)
    (build-list n (lambda (x) (random maxValue)))))

(display "list: ")
(define g (randList 20 50)) 
g

(display "odds: ")
(filter odd? g)

(display "larger half: ") 
(filter (lambda (x) (>= x 25)) g)
(display "smaller half: ")
(filter (lambda (x) (< x 25)) g)
