#lang racket
;(randlist n) -> list
;  n: positive integer
;
; returns a list of n integers in the range [0, 100)
(define randList
  (lambda (n)
    (if (= n 0)
        '()
        (cons (random 100) (randList (- n 1))))))
(define testList (randList 10))

;(count value g) -> nonnegative integer
;  value: number
;  g: list
;
; Returns the number of times value appears in g.
(define count
  (lambda (value g)
    (if (null? g)
        0
        (if (= value (first g))
            (+ 1 (count value (rest g)))
            (count value (rest g))))))

(display "count tests\n")
(display "0: ")(count 4 '(42 18 76 -91))
(display "2: ")(count 4 '(42 4 76 4))


;(listMin g currentMin) -> number
;  g: list
;  currentMin: number
;
; Returns the smallest value in g.
(define listMin
  (lambda (g currentMin)
    (if (null? g)
        currentMin
        (if (> currentMin (first g))
            (listMin (rest g) (first g))
            (listMin (rest g) currentMin)))))
(display "\nlistMin test\n")
(display "list: ")(display testList)
(display "\nmin: ")(listMin testList 100)



;(countDown n) -> list
;  n: nonnegative integer
;
;Returns a list containing all the integers from n to 0.
(define countdown
  (lambda (n)
    (if (= n 0)
        '(0)
        (cons n (countdown (- n 1))))))
(display "\nCountdown test 10\n")
(countdown 10)


;(doublify g) -> list
;  g: list
;
;Returns a list containing the values of g times 2.
(define doublify
  (lambda (g)
    (if (null? g)
        '()
        (cons (* 2 (first g)) (doublify (rest g))))))
(display "\nDoublify test\n")
(display "list: ")(display testList)
(display "\ndoubled: ")(doublify testList)


;(myMap f g) -> list
;  f: function that takes one argument
;  g: list
;
;Returns a list created by running f on each element of g
(define myMap
  (lambda (f g)
    (if (null? g)
        '()
        (cons (f (first g)) (myMap f (rest g))))))
(display "\nmyMap test\n")
(display "list: ")'(#t #t #f #f #t #f)
(display "negated ")(myMap not '(#t #t #f #f #t #f))


;(reverse-build-list n f) -> list
;  n: positive integer
;  f: function that takes one argument
;
; Creates a list by running f on each integer from n to 0
(define reverse-build-list
  (lambda (n f)
    (if (< n 0)
        '()
        (cons (f n) (reverse-build-list (- n 1) f)))))
(display "reverse-build-list test\n")
(display "sqrt:")(reverse-build-list 5 sqrt)
(display "powers of 2: ")(reverse-build-list 5 (lambda (x) (expt 2 x)))