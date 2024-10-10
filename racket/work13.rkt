#lang racket
#|
1. Returns the data at the beginning of a list.
2. Follows the link of the first element of a list and returns the rest of the list.
5. Creates a list by generating integers 1 to n and calling a provided function on each integer.
7. Returns a random floating point value [0,1)
8. Returns a radnom integer [0, n)
9. Returns a random integer [a, b)
|#

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

(display "question 3: ")(rest (rest a))
(display "question 4: ")(first (rest (rest a)))
(display "question 6: ")
(build-list 5 (lambda (x) (* x x x)))
(display "question 6: ")
(build-list 10 (lambda (x) (random 10 20)))