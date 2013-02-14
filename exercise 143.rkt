;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 143|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Exercise 143

(define-struct work (employee rate hours))
; Work is a structure: (make-work String Number Number). 
; interp. (make-work n r h) combines the name (n) 
; with the pay rate (r) and the number of hours (h) worked.

(define-struct pay_check (name amount))
; Pay_check is a structure: (make-pay_check String Number).
; interp. (make-pay_check n a) combines the name (n)
; with the amount of pay (a)

; Low (list of works) is one of: 
; – empty
; – (cons Work Low)
; interp. an instance of Low represents the work efforts
; of some hourly employees

; Lop (list of pay_checks) is one of:
; - empty
; - (cons Pay_check Lop)

; Low -> Lop
; Consume a list of work records and produce a list of pay checks

(define (wage*.v3 Low) 0)