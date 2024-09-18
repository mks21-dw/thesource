#lang racket
; (perimFromArea a) --> number
;   a : number
;   Returns the perimeter of that square whose area is a
;   (perimFromArea 25) --> 20
;   (perimFromArea 10) --> 12.649110640673518
(define perimFromArea
  (lambda (area)
    (* 4 (sqrt area))))
(display "20: ")
(perimFromArea 25)
(display "12.649110640673518: ")
(perimFromArea 10)


; (f_to_c temp) --> number
;   temp : number
;   Returns temp converted from farenheit to celsius
;   (f_to_c 212) --> 100
(define f_to_c
  (lambda (temp)
    (* (- temp 32) (/ 5 9))))
(display "100: ")
(f_to_c 212)

; (cost base rate) --> number
;   base : number
;   rate : number
;   Returns the cost calculated as base + base * rate
;   (cost 10 0.25) --> 12.5
(define cost
  (lambda (base rate)
    (+ base (* base rate))))
(display "12.5: ")
(cost 10 0.25)

; (groupCost students teachers adults) --> number
;   students : number
;   teahcers : number
;   adults : number
;   Returns the cost for the whole group :
;        (cost 5 0.5) * students +
;        (cost 10 0.75) * teachers +
;        (cost 10 1) * adults
;   (groupCost 34 2 2) --> 330.0
(define groupCost
  (lambda (students teachers adults)
    (+ (* students (cost 5 0.5))
       (* teachers (cost 10 0.75))
       (* adults (cost 10 1)))))
(display "330.0: ")
(groupCost 34 2 2)
