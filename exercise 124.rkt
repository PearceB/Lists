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
; To find the sum of the numbers in a NEList-of-Temperatures
(check-expect (sum (list 1 )) 1)
(check-expect (sum (list 1 2)) 3)

(define (sum anelot)
  (cond
    [(empty? (rest anelot)) (first anelot)]
    [(cons? (rest anelot))
     (+ (first anelot) (sum (rest anelot)))]))

; NEList-of-Temperatures -> Number
; To find how many numbers are in a NEList-of-Temperatures
(check-expect (how-many (list 2)) 1)
(check-expect (how-many (list 2 3 3)) 3)

(define (how-many anelot)
  (cond
    [(empty? (rest anelot)) 1]
    [(cons? (rest anelot)) (+ (how-many (rest anelot)) 1)]))