#lang racket
; (perimFromArea a) --> number
;   a : number
;   Returns the perimeter of that square whose area is a
;   (perimFromArea 25) --> 20
;   (perimFromArea 10) --> 12.649110640673518
(define perimFromArea
  (lambda (area)
    (* 4 (sqrt area))))


; (f_to_c temp) --> number
;   temp : number
;   Returns temp converted from farenheit to celsius
;   (f_to_c 212) --> 100
(define f_to_c
  (lambda (temp)
    (* (- temp 32) (/ 5 9))))


(define cost
  (lambda (base rate)
    (+ base (* base rate))))



(define groupCost
  (lambda (students teachers adults)
    (+ (* students (cost 5 0.5))
       (* teachers (cost 10 0.75))
       (* adults (cost 10 1)))))
