;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname NQueens) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Nqueens problem
;; Given an integer n
;; How can you orient n queens on a board n^2 in size such that none attack each other
;; interpretation:
;; - no queens can be horizantal from each other
;; - no queens can be vertical from each other
;; - no queens can be diagonal from each other

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


;; Function
;; nqueens (Natural -> Board or False)
;; produces the first found solution for N number of queens

(check-expect (nqueens 1) (list 0))
(check-expect (nqueens 2) false)
(check-expect (nqueens 3) false)
(check-expect (nqueens 4) (list 14 8 7 1))
(check-expect (nqueens 5) (list 23 16 14 7 0))
(check-expect (nqueens 6) (list 34 26 18 17 9 1))
(check-expect (nqueens 7) (list 47 38 29 27 18 9 0))
(check-expect (nqueens 8) (list 59 49 46 34 29 23 12 0))