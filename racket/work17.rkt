#lang racket
;useful for testing
(define tester (build-list 10 (lambda (n) (random 100))))

(define count
  (lambda (value nums)
    (if (null? nums)
        0
        (if (= value (first nums))
            (+ 1 (count value (rest nums)))
            (count value (rest nums))))))
(count tester)

(define listMin
  (lambda (g currentMin)
    (if (null? g)
        currentMin
        (if (< (first  g) currentMin)
            (listMin (rest g) (first g))
            (listMin (rest g) currentMin)))))
(listMin tester +inf.0)


(define countdown
  (lambda (n)
    (if (= n 0)
        (list 0)
        (cons n (countdown (- n 1))))))

(countdown 10)


(define doublify
  (lambda (g)
    (if (null? g)
        (list)
        (cons (* (first g) 2) (doublify (rest g))))))
(doublify tester)

(define myMap
  (lambda (f g)
    (if (null? g)
        (list)
        (cons (f (first g)) (myMap f (rest g))))))
(myMap sqrt tester)

(define reverse-build-list
  (lambda (n f)
    (if (= n 0)
        (list (f 0))
        (cons (f n) (reverse-build-list (- n 1) f)))))

(reverse-build-list 5 sqrt)
