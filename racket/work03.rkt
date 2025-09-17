#lang racket


(define triArea
  (lambda (base height)
    (* 0.5 base height)))
(triArea 12 5)


;Ferenheit given Celsius
(define celToFaren
  (lambda (celsius)
    (+ (* (/ 9 5) celsius) 32)))
;should return 212
(celToFaren 100)

;Gravity given masses and distance
(define gravity
  (lambda (mass1 mass2 dist)
    (/ (* mass1 mass2) (expt dist 2))))
;should return 6
(gravity 27 2 3)
