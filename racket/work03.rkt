#lang racket

;Hypotenuse given legs
(define a 3)
(define b 4)
;should return 5
(display "5: ")
(sqrt (+ (* a a) (* b b)))

;Triangle area given base and height
(define base 12)
(define height 5)
;should return 30
(* (/ 1 2) base height)

;Ferenheit given Celsius
(define celsius 100)
;should return 212
(+ (* (/ 9 5) celsius) 32)

;Gravity given masses and distance
(define mass1 27)
(define mass2 2)
(define dist 3)
;should return 6
(/ (* mass1 mass2) (expt dist 2))
