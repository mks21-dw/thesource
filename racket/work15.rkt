#lang racket
(define randList
  (lambda (n maxValue)
    (build-list n (lambda (x) (random maxValue)))))

(display "list: ")
(define g (randList 20 100)) 
g

(display "sum: ")
(foldl + 0 g)
(display "count: ")
(foldl (lambda (value previous)
         (+ 1 previous)) 0 g)
(display "smallest ")
(foldl (lambda (value previous)
         (if (< value previous)
             value
             previous))
       (first g) g)

(display "odds: ")
(define odds (filter odd? g))
odds
(display "sum: ")
(foldl + 0 odds)
(display "larger half count: ") 
(foldl (lambda (value previous)
         (+ 1 previous))
       0
       (filter (lambda (x) (>= x 25)) g))
