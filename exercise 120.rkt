;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 120|) (read-case-sensitive #t) (teachpacks ((lib "universe.ss" "teachpack" "2htdp") (lib "image.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.ss" "teachpack" "2htdp") (lib "image.ss" "teachpack" "2htdp")))))
; Exercise 120

; A List-of-Strings is one of:
; - empty
; - (cons String List-of-Strings)
; interp. a List-of-Strings is a list of strings

; List-of-Strings -> String
; Take the strings in a List-of-Strings and append them together

(define (juxtapose List-of-Strings)
  (cond
    [... (empty? List-of-Strings) ...]
    [... (first List-of-Strings) ...
     ... (rest List-of-Strings) ...]))