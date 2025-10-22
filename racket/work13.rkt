#lang racket

(define a (list 51 2 21 42 46 20))

(display "useful output for questions 1-4\n")
a
(first a)
(rest a)

(define b (rest a))
(first b)

(display "useful output for questions 5-6\n")
(build-list 5 sqrt)
(build-list 5 (lambda (x) (* x x)))

(display "useful output for questions 7-9\n")
(random)
(random 2)
(random 5 10)
