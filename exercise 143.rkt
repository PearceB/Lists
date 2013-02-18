;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 143|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Exercise 143

(define-struct work (employee rate hours))
; Work is a structure: (make-work String Number Number). 
; interp. (make-work n r h) combines the name (n) 
; with the pay rate (r) and the number of hours (h) worked.

(define-struct pay_check (name number))
; Pay_check is a structure: (make-pay_check String Number).
; interp. (make-pay_check n num) combines the name (n)
; with the amount of pay (num)

; Low (list of works) is one of: 
; – empty
; – (cons Work Low)
; interp. an instance of Low represents the work efforts
; of some hourly employees

; Lop (list of pay_checks) is one of:
; - empty
; - (cons Pay_check Lop)

; Work -> Number
; compute the wage for the given work record w
(check-expect (wage.v2 (make-work "Bob" 4 12)) 48)

(define (wage.v2 w)
  (* (work-rate w) (work-hours w)))

; Low -> Lop
; Consume a list of work records and produce a list of pay checks
(check-expect (wage*.v3 empty) empty)
(check-expect (wage*.v3 (list (make-work "Bob" 12 4))) (list (make-pay_check "Bob" 48)))
(check-expect (wage*.v3 (list (make-work "Bob" 12 4)
                              (make-work "Bobby" 5 14)))
                        (list (make-pay_check "Bob" 48)
                              (make-pay_check "Bobby" 70)))

(define (wage*.v3 Low)
  (cond
    [(empty? Low) empty]
    [(cons? Low)
     (cons (make-pay_check (work-employee (first Low))
                           (wage.v2 (first Low)))
           (wage*.v3 (rest Low)))]))

(define-struct WorkRecord (employee employee-number rate hours))
; Work is a structure: (make-work String Number Number). 
; interp. (make-work n en r h) combines the name (n) and the employee number (en)
; with the pay rate (r) and the number of hours (h) worked.

(define-struct pay-check (name employee-number number))
; Pay_check is a structure: (make-pay_check String Number).
; interp. (make-pay_check n num) combines the name (n)
; and the employee-number (en) with the amount of pay (num)

; Work -> Number
; compute the wage for the given work record w
(check-expect (wage*.v2 (make-WorkRecord "Bob" 17 4 12)) 48)

(define (wage*.v2 w)
  (* (WorkRecord-rate w) (WorkRecord-hours w)))

; Low -> Lop
; Consume a list of revised work records and produce a list of revised pay checks
(check-expect (wage*.v4 empty) empty)
(check-expect (wage*.v4 (list (make-WorkRecord "Bob" 17 4 12)))
              (list (make-pay-check "Bob" 17 48)))

(define (wage*.v4 Low)
  (cond
    [(empty? Low) empty]
    [(cons? Low)
      (cons (make-pay-check (WorkRecord-employee (first Low))
                            (WorkRecord-employee-number (first Low))
                            (wage*.v2 (first Low)))
            (wage*.v4 (rest Low)))]))