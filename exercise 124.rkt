;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 124|) (read-case-sensitive #t) (teachpacks ((lib "universe.ss" "teachpack" "2htdp") (lib "image.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.ss" "teachpack" "2htdp") (lib "image.ss" "teachpack" "2htdp")))))
; Exercise 124

; A NEList-of-temperatures
; - (cons CTemperature empty)
; - (cons CTemperature NEList-of-temperatures)
; interp. : nopn-empty lists of measured temperatures

; Helper Functions

; NEList-of-Temperatures -> Number
(check-expect (sum (list 1 )) 1)
(check-expect (sum (list 1 2)) 3)

(define (sum anelot)
  (cond
    [(empty? (rest anelot)) (first anelot)]
    [(cons? (rest anelot))
     (+ (first anelot) (sum (rest anelot)))]))