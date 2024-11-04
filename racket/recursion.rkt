#lang racket
(define fib
  (lambda (n)
    (if (< n 2)
        1
        (+ (fib (- n 1)) (fib (- n 2))))))

(fib 5)

#|
(fib 5)
(+ (fib 4)                                                   (fib 3))
(+ (+ (fib 3)                          (fib 2))              (+ (fib 2)             (fib 1)))
(+ (+ (+ (fib 2)              (fib 1)) (+ (fib 1) (fib 0)))  (+ (+ (fib 1) (fib 0)) 1))
(+ (+ (+ (+ (fib 1) (fib 0))  1)       (+ 1       1))        (+ (+ 1       1)       1))
(+ (+ (+ (+ 1       1)        1)       2)                    (+ 2                   1))
(+ (+ (+ 2                    1)       2)                    3)
(+ (+ 3                                2)                    3)
(+ 5                                                         3)
8
|#

(define rbl
  (lambda (n f)
    (if (= n 0)
        null
        (cons (f n) (rbl (- n 1) f)))))
(rbl 5 sqrt)


(define bd
  (lambda (n)
    (if (= n 0)
        0
        (+ 1 (bd (quotient n 2))))))
(bd 10)
(+ 1 (bd 5))
(+ 1 (+ 1 (bd 2)))
(+ 1 (+ 1 (+ 1 (bd 1))))
(+ 1 (+ 1 (+ 1 (+ 1 (bd 0)))))
(+ 1 (+ 1 (+ 1 (+ 1 0))))
(+ 1 (+ 1 (+ 1 1)))
(+ 1 (+ 1 2))
(+ 1 3)
4

(define enigma
  (lambda (g0 g1)
    (if (null? g0)
        g1
        (if (null? g1)
            g0
            (if (< (first g0) (first g1))
                (cons (first g0) (enigma (rest g0) g1))
                (cons (first g1) (enigma g0 (rest g1))))))))   

(define t0 (list 1 6 8))
(define t1 (list 2 3 4))
t0
t1
(enigma t0 t1)

(define f
  (lambda (g)
    (if (null? f)
        true
        (if (
