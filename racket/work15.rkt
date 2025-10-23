#lang racket
(define randList
  (lambda (n maxValue)
    (build-list n
                (lambda (x)
                  (random 0 maxValue)))))

(define g (randList 20 50))
(display "list: ")
g

(display "odds: ")
(filter (lambda (n) (= 1 (remainder n 2))) g)

(display "larger half: ")
(filter (lambda (n) (>= n 25)) g)

(display "smaller half: ")
(filter (lambda (n) (< n 25)) g)