#lang racket
(define randList
  (lambda (n maxValue)
    (build-list n (lambda (x) (random maxValue)))))

;randlist test
(display "list: ")
(define g (randList 20 100)) 
g

;sum test
(display "sum: ")
(foldl +  ;function
       0  ;starting valu
       g) ;list

;count test
(display "count: ")
(foldl (lambda (value previous) ;function
         (+ 1 previous))
       0 ;starting value
       g) ;list

;find smallest
(display "smallest ")
(foldl (lambda (value previous)  ;function
         (if (< value previous)
             value
             previous))
       (first g) ;starting value
       g) ;list

;filter odds
(display "odds: ")
(define odds (filter odd? g))
odds

;sum of odds
(display "oods sum: ")
(foldl + 0 odds)

;larger half
(display "larger half count: ") 
(foldl (lambda (value previous) ;function
         (+ 1 previous))
       0 ;starting value
       (filter (lambda (x) (>= x 50)) g)) ;list
