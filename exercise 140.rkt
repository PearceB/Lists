;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise 140|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Exercise 140

; A LoFT (List-of-Farenheit-Temperatures) is one of:
; - empty
; - (cons FTemperature LoFT)
; interp. : a list of farenheit temperatures is a list of temperatures in Farenheit

; A LoCT (List-of-Celsius-Temperatures) is one of:
; - empty
; - (cons CTemperature LoCT)
; interp. : a list of celsius temperatures is a list of temperatures in Celsius

; LoFT -> LoCT
; To change a LoFT to a LoCT

(define (convertFC LoFT)
  (cond
    [(empty? LoFT) ...]
    [(cons? LoFT)
     (... (first LoFT) ...
          (rest LoFT) ...)]))