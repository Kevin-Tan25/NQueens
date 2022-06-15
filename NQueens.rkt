;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname NQueens) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Data definition

;; Position
;; Position is Natural
;; interpretation:
;; - if a board has N queens, it will have (sqr N) positions
;; - a board will have [0, (sqr N) - 1] positions

(define P1 0) ;;the top left corner of a board
(define P2 (- 16 1)) ;;the lower right corner of a 4 x 4 board
(define P3 (/ 9 2)) ;;the middle of a 3 x 3 board


;; Board
;; Board is a (listof Position)
;; interpretation:
;; - the position of queens on the board
(define B1 empty) ;;there are no queens on the board
(define B2 (list 0)) ;;queen placed on upper left corner of board
(define B3 (list 14 8 7 1)) ;;a solution to a 4 x 4 NQueens puzzle