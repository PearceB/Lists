;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 117|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Exercise 117


; A List-of-amounts is one of:
; – empty
; – (cons PositiveNumber List-of-amounts)
; interp. a List-of-amounts represents some amounts of money