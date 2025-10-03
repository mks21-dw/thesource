#lang racket
;(onesOrTens n) --> integer
;  n: positive 2 digit integer
; Returns the ones digit of an odd integer or
; the tens digit or an even integer.
(define onesOrTens
  (lambda (n)
    (if ( = 0 (remainder n 2))
        (quotient n 10)
        (remainder n 10))))
(display "onesOrTensTests:\n")
(display "should be 5: ")
(onesOrTens 54)
(display "should be 3: ")
(onesOrTens 53)

;(closerNumber a b target) --> number
;  a: number
;  b: number
;  target: number
;
; Returns b if the distance on a number line from b to
; target is less than the distance from a to target.
; Returns a in all other cases
(define closerNumber
  (lambda (a b target)
    (if (> (abs (- a target))
           (abs (- b target)))
        b
        a)))
(display "\ncloserNumber tests:\n")
(display "should be 7: ")
(closerNumber 7 16 10)
(display "should be 15: ")
(closerNumber 3 15 10)

(define pythTriple
  (lambda (a b c)
    (= (* c c)
       (+ (* a a) (* b b)))))
(define pythTriple2
  (lambda (a b c)
    (or
     (pythTriple a b c)
     (pythTriple a c b)
     (pythTriple b c a))))

; (triangleTest a b c) --> string
;  a: positive number
;  b: positive number
;  c: positive number
;
; Returns a string stating if a, b, and c could
; represent the sides of a right triangle,
; the sides of a non-right triangle,
; or not a triangle at all.
(define triangleTest
  (lambda (a b c)
    (if (pythTriple2 a b c)
        "right triangle"
        (if (> (+ a b) c)
            (if (> (+ a c) b)
                (if (> (+ b c) a)
                    "non-right triangle"
                    "not a triangle")
                "not a triangle")
            "not a triangle"))))


(display "\ntriangleTest tests:\n")
(display "should be right triangle: ")
(triangleTest 5 4 3)
(display "should be non-right triangle: ")
(triangleTest 2 3 4)
(display "should be not a triangle: ")
(triangleTest 2 3 10)
(display "should be not a triangle: ")
(triangleTest 2 10 4)
(display "should be not a triangle: ")
(triangleTest 10 3 4)
