(declare-const x Int)
(define-fun y () Int 5)
(define-fun z () Int 6)
(assert (> y x))

(define-fun square ((n Int)) Int
    (* n n))

(assert (= 3 (square y)))
;(declare-fun factorial (Int) Int)
(define-fun-rec factorial ((n Int)) Int
  (ite (<= n 1) 1
    (* n (factorial (- n 1)))))

;(declare-fun even (Int) Bool)
;(declare-fun odd (Int) Bool)

(define-funs-rec (
    (even ((n Int)) Bool)
    (odd ((n Int)) Bool)
  ) (
    (ite (= n 0) true (odd (- n 1)))
    (ite (= n 0) false (even (- n 1)))
  ))

(assert (= 6 (factorial 3)))
(assert (even 5))

(assert (> x (+ z z)))