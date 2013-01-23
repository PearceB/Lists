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

(define (all-true List-of-Boolean)
  (cond
    [... (emmpty? List-of-Boolean) ...]
    [else ... (first List-of-Boolean) ...
          ... (rest List-of-Boolean) ...]))