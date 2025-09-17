#lang racket

(define base 4)
(define height 10)
;should be 20
(* 0.5 base height)

(define celsius 100)
;should be 212
(+ (* (/ 9 5) celsius) 32)

(define m1 10)
(define m2 4)
(define d 2)
;should be 10
(/ (* m1 m2) (* d d))
