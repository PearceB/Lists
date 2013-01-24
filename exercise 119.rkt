;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 119|) (read-case-sensitive #t) (teachpacks ((lib "universe.ss" "teachpack" "2htdp") (lib "image.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.ss" "teachpack" "2htdp") (lib "image.ss" "teachpack" "2htdp")))))
; Exercise 119

; A List-of-Boolean is one of:
; - empty
; - (cons Boolean List-of-Boolean)
; interp. a List-of-Boolean is a list of Boolean values

; List-of-Boolean -> Boolean
; Determine whether all the Boolean values in a List-of-Boolean are true or not
(check-expect (all-true empty) true)
(check-expect (all-true (list true)) true)
(check-expect (all-true (list false)) false)
(check-expect (all-true (list true false)) false)

(define (all-true List-of-Boolean)
  (cond
    [(empty? List-of-Boolean) true]
    [(cons? List-of-Boolean)
     (if
      (boolean=? (first List-of-Boolean) true)
      (all-true (rest List-of-Boolean))
      false)]))

; List-of-Boolean -> Boolean
; Determine whether at least one value on the list is true
(check-expect (one-true empty) false)
(check-expect (one-true (list true)) true)
(check-expect (one-true (list false)) false)
(check-expect (one-true (list true false)) true)
(check-expect (one-true (list false true)) true)
(check-expect (one-true (list false false)) false)

(define (one-true List-of-Boolean)
  (cond
    [(empty? List-of-Boolean) false]
    [(cons? List-of-Boolean)
     (if
      (boolean=? (first List-of-Boolean) true)
      true
      (one-true (rest List-of-Boolean)))]))