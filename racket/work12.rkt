#lang racket
(define fizzbuzz
  (lambda (n)
    (if (= 0 (remainder n 15))
        15
        (if (= 0 (remainder n 3))
            3
            (if (= 0 (remainder n 5))
                5
                -1)))))
(fizzbuzz 30)
(fizzbuzz 33)
(fizzbuzz 35)
(fizzbuzz 32)

(define fizzbuzz2
  (lambda (n fizz buzz)
    (if (= 0 (remainder n (* fizz buzz)))
        (* fizz buzz)
        (if (= 0 (remainder n fizz))
            fizz
            (if (= 0 (remainder n buzz))
                buzz
                -1)))))