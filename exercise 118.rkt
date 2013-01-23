;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 118|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Exercise 118


; A List-of-numbers is one of: 
; – empty
; – (cons Number List-of-numbers)
; interp. a List-of-numbers is a list of numbers

; List-of-numbers -> Boolean
; Determine whether the numbers in a List-of-numbers are positive or not
(check-expect (pos? empty) false)
(check-expect (pos? (list 1)) true)
(check-expect (pos? (list 1 1)) true)
(check-expect (pos? (list -1)) false)

(define (pos? List-of-numbers)
  (cond
    [(empty? List-of-numbers) false]
    [else
     (if (> (first List-of-numbers) 0)
          true
          (pos? (rest List-of-numbers)))]))