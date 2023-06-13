(set-logic QF_UF)
(declare-sort nat 0)
(declare-sort list 0)
(declare-sort tree 0)
(declare-fun succ (nat) nat)
(declare-fun is-succ (nat) Bool)
(declare-fun pred (nat) nat)
(declare-fun zero () nat)
(declare-fun is-zero (nat) Bool)
(declare-fun cons (tree list) list)
(declare-fun is-cons (list) Bool)
(declare-fun car (list) tree)
(declare-fun cdr (list) list)
(declare-fun null () list)
(declare-fun is-null (list) Bool)
(declare-fun node (list) tree)
(declare-fun is-node (tree) Bool)
(declare-fun children (tree) list)
(declare-fun leaf (nat) tree)
(declare-fun is-leaf (tree) Bool)
(declare-fun data (tree) nat)
(declare-fun x1 () nat)
(declare-fun x2 () nat)
(declare-fun x3 () nat)
(declare-fun x4 () list)
(declare-fun x5 () list)
(declare-fun x6 () list)
(declare-fun x7 () tree)
(declare-fun x8 () tree)
(declare-fun x9 () tree)
(declare-fun contrived_variable1 () list)
(declare-fun contrived_variable3 () nat)
(declare-fun contrived_variable0 () list)
(declare-fun contrived_variable4 () tree)
(declare-fun contrived_variable5 () tree)
(declare-fun contrived_variable2 () tree)
(declare-fun contrived_variable6 () list)
(declare-fun contrived_variable7 () nat)
(assert (is-zero zero))
(assert (is-null null))
(assert
 (and (and (and (and (and (= contrived_variable1 contrived_variable0)
  (not ((_ is null) x5))) (not ((_ is node) x9))) (= x1 zero))
  ((_ is node) contrived_variable2)) (not (= zero contrived_variable3))))
(assert
 (and (= (cons x7 x4) contrived_variable0) (is-cons contrived_variable0)
  (= (car contrived_variable0) x7) (= (cdr contrived_variable0) x4)))
(assert
 (and (= (node null) contrived_variable4) (is-node contrived_variable4)
  (= (children contrived_variable4) null)))
(assert
 (and (= (node null) contrived_variable5) (is-node contrived_variable5)
  (= (children contrived_variable5) null)))
(assert
 (and (= (leaf x3) contrived_variable2) (is-leaf contrived_variable2)
  (= (data contrived_variable2) x3)))
(assert
 (or
  (and ((_ is node) x9) (and (= (children x9) contrived_variable1)
   (= (node contrived_variable6) x9) (= (children x9) contrived_variable6)))
  (and (not ((_ is node) x9)) (= contrived_variable1 null))))
(assert
 (or
  (and (is-leaf contrived_variable5) (and
   (= (data contrived_variable4) contrived_variable3)
   (= (leaf contrived_variable7) contrived_variable4)
   (= (data contrived_variable4) contrived_variable7)))
  (and (not (is-leaf contrived_variable5)) (= contrived_variable3 zero))))
(assert
 (or (and (is-cons contrived_variable6) (not (is-null contrived_variable6)))
  (and (not (is-cons contrived_variable6)) (is-null contrived_variable6))))
(assert (=> (is-null contrived_variable6) (= contrived_variable6 null)))
(assert
 (or (and (is-cons contrived_variable0) (not (is-null contrived_variable0)))
  (and (not (is-cons contrived_variable0)) (is-null contrived_variable0))))
(assert (=> (is-null contrived_variable0) (= contrived_variable0 null)))
(assert
 (or (and (is-cons contrived_variable1) (not (is-null contrived_variable1)))
  (and (not (is-cons contrived_variable1)) (is-null contrived_variable1))))
(assert (=> (is-null contrived_variable1) (= contrived_variable1 null)))
(assert
 (or (and (is-cons x6) (not (is-null x6)))
  (and (not (is-cons x6)) (is-null x6))))
(assert (=> (is-null x6) (= x6 null)))
(assert
 (or (and (is-cons x5) (not (is-null x5)))
  (and (not (is-cons x5)) (is-null x5))))
(assert (=> (is-null x5) (= x5 null)))
(assert
 (or (and (is-cons x4) (not (is-null x4)))
  (and (not (is-cons x4)) (is-null x4))))
(assert (=> (is-null x4) (= x4 null)))
(assert
 (or (and (is-cons null) (not (is-null null)))
  (and (not (is-cons null)) (is-null null))))
(assert (=> (is-null null) (= null null)))
(assert
 (or (and (is-node contrived_variable2) (not (is-leaf contrived_variable2)))
  (and (not (is-node contrived_variable2)) (is-leaf contrived_variable2))))
(assert
 (or (and (is-node contrived_variable5) (not (is-leaf contrived_variable5)))
  (and (not (is-node contrived_variable5)) (is-leaf contrived_variable5))))
(assert
 (or (and (is-node contrived_variable4) (not (is-leaf contrived_variable4)))
  (and (not (is-node contrived_variable4)) (is-leaf contrived_variable4))))
(assert
 (or (and (is-node x9) (not (is-leaf x9)))
  (and (not (is-node x9)) (is-leaf x9))))
(assert
 (or (and (is-node x8) (not (is-leaf x8)))
  (and (not (is-node x8)) (is-leaf x8))))
(assert
 (or (and (is-node x7) (not (is-leaf x7)))
  (and (not (is-node x7)) (is-leaf x7))))
(assert
 (or (and (is-succ contrived_variable7) (not (is-zero contrived_variable7)))
  (and (not (is-succ contrived_variable7)) (is-zero contrived_variable7))))
(assert (=> (is-zero contrived_variable7) (= contrived_variable7 zero)))
(assert
 (or (and (is-succ contrived_variable3) (not (is-zero contrived_variable3)))
  (and (not (is-succ contrived_variable3)) (is-zero contrived_variable3))))
(assert (=> (is-zero contrived_variable3) (= contrived_variable3 zero)))
(assert
 (or (and (is-succ x3) (not (is-zero x3)))
  (and (not (is-succ x3)) (is-zero x3))))
(assert (=> (is-zero x3) (= x3 zero)))
(assert
 (or (and (is-succ x2) (not (is-zero x2)))
  (and (not (is-succ x2)) (is-zero x2))))
(assert (=> (is-zero x2) (= x2 zero)))
(assert
 (or (and (is-succ x1) (not (is-zero x1)))
  (and (not (is-succ x1)) (is-zero x1))))
(assert (=> (is-zero x1) (= x1 zero)))
(assert
 (or (and (is-succ zero) (not (is-zero zero)))
  (and (not (is-succ zero)) (is-zero zero))))
(assert (=> (is-zero zero) (= zero zero)))
(assert (not (= (children (car contrived_variable6)) contrived_variable6)))
(assert
 (not
  (= (car (children (car contrived_variable6))) (car contrived_variable6))))
(assert
 (not
  (= (children (car (children (car contrived_variable6))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (children (car (children (car contrived_variable6))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable6)))))
   (car (children (car contrived_variable6))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable6)))))
   (car contrived_variable6))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable6))))))
   (children (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable6))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable6)))))))
   (car (children (car (children (car contrived_variable6))))))))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable6)))))))
   (car (children (car contrived_variable6))))))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable6)))))))
   (car contrived_variable6))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable6)))))))
   (children (car (children (car (children (car contrived_variable6)))))))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable6)))))))
   (children (car (children (car contrived_variable6)))))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (=
   (pred (data (car (children (car (children (car contrived_variable6)))))))
   (data (car (children (car (children (car contrived_variable6)))))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable6)))))
   (children (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable6)))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car (children (car contrived_variable6))))))
   (car (children (car contrived_variable6))))))
(assert
 (not
  (= (car (cdr (children (car (children (car contrived_variable6))))))
   (car contrived_variable6))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable6)))))))
   (cdr (children (car (children (car contrived_variable6))))))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable6)))))))
   (children (car (children (car contrived_variable6)))))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable6))))))
   (cdr (children (car (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable6))))))
   (children (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable6))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car contrived_variable6)))))))
   (car (children (car contrived_variable6))))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car contrived_variable6)))))))
   (car contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable6)))))))
   (cdr (cdr (children (car (children (car contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable6)))))))
   (cdr (children (car (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable6)))))))
   (children (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable6)))))
   (data (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car contrived_variable6))))))
   (pred (data (car (children (car contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car contrived_variable6))))))
   (data (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable6)))))))
   (pred (pred (data (car (children (car contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable6)))))))
   (pred (data (car (children (car contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable6)))))))
   (data (car (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable6)))
   (children (car contrived_variable6)))))
(assert
 (not (= (cdr (children (car contrived_variable6))) contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable6))))
   (car contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable6)))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable6)))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr (children (car contrived_variable6))))))
   (car (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (car (children (car (cdr (children (car contrived_variable6))))))
   (car contrived_variable6))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable6)))))))
   (children (car (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable6)))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable6))))))
   (children (car (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable6))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable6))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car contrived_variable6)))))))
   (car (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car contrived_variable6)))))))
   (car contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable6)))))))
   (cdr (children (car (cdr (children (car contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable6)))))))
   (children (car (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable6)))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr (children (car contrived_variable6))))))
   (data (car (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car contrived_variable6)))))))
   (pred (data (car (cdr (children (car contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car contrived_variable6)))))))
   (data (car (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable6))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable6))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable6)))) contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable6)))))
   (car contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable6))))))
   (cdr (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable6))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable6))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car contrived_variable6)))))))
   (car (cdr (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car contrived_variable6)))))))
   (car contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable6)))))))
   (children (car (cdr (cdr (children (car contrived_variable6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car contrived_variable6)))))))
   (data (car (cdr (cdr (children (car contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable6)))))
   (cdr (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable6)))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable6)))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car contrived_variable6))))))
   (car contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (cdr (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable6))))))
   (cdr (cdr (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable6))))))
   (cdr (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable6))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable6))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (car contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (cdr (cdr (children (car contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (cdr (children (car contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (cdr (children (car contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   (children (car contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car contrived_variable6))) (data (car contrived_variable6)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable6))))
   (pred (data (car contrived_variable6))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable6))))
   (data (car contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable6)))))
   (pred (pred (data (car contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable6)))))
   (pred (data (car contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable6)))))
   (data (car contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable6))))))
   (pred (pred (pred (data (car contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable6))))))
   (pred (pred (data (car contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable6))))))
   (pred (data (car contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable6))))))
   (data (car contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable6)))))))
   (pred (pred (pred (pred (data (car contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable6)))))))
   (pred (pred (pred (data (car contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable6)))))))
   (pred (pred (data (car contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable6)))))))
   (pred (data (car contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable6)))))))
   (data (car contrived_variable6)))))
(assert (not (= (cdr contrived_variable6) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr contrived_variable6))) (cdr contrived_variable6))))
(assert
 (not (= (children (car (cdr contrived_variable6))) contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable6))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable6)))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable6)))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (children (car (cdr contrived_variable6))))))
   (car (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (car (children (car (children (car (cdr contrived_variable6))))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable6)))))))
   (children (car (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable6)))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable6))))))
   (children (car (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable6))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr contrived_variable6)))))))
   (car (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr contrived_variable6)))))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable6)))))))
   (cdr (children (car (children (car (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable6)))))))
   (children (car (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable6)))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (children (car (cdr contrived_variable6))))))
   (data (car (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr contrived_variable6)))))))
   (pred (data (car (children (car (cdr contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr contrived_variable6)))))))
   (data (car (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable6))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable6))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable6)))) contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable6)))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable6))))))
   (cdr (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable6))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr contrived_variable6)))))))
   (car (cdr (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr contrived_variable6)))))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable6)))))))
   (children (car (cdr (children (car (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable6)))))))
   (cdr (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable6)))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr contrived_variable6)))))))
   (data (car (cdr (children (car (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable6)))))
   (cdr (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable6)))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable6)))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr contrived_variable6))))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr (cdr (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable6))))))
   (cdr (cdr (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable6))))))
   (cdr (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable6))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (car (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr (cdr (children (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr (children (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (children (car (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable6))))
   (data (car (cdr contrived_variable6))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable6)))))
   (pred (data (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable6)))))
   (data (car (cdr contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable6))))))
   (pred (pred (data (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable6))))))
   (pred (data (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable6))))))
   (data (car (cdr contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable6)))))))
   (pred (pred (pred (data (car (cdr contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable6)))))))
   (pred (pred (data (car (cdr contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable6)))))))
   (pred (data (car (cdr contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable6)))))))
   (data (car (cdr contrived_variable6))))))
(assert (not (= (cdr (cdr contrived_variable6)) (cdr contrived_variable6))))
(assert (not (= (cdr (cdr contrived_variable6)) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable6))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable6))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable6)))) contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable6)))))
   (car (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable6))))))
   (children (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable6))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr contrived_variable6)))))))
   (car (children (car (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr contrived_variable6)))))))
   (car (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable6)))))))
   (children (car (children (car (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable6)))))))
   (children (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr contrived_variable6)))))))
   (data (car (children (car (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable6)))))
   (children (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable6)))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable6)))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr contrived_variable6))))))
   (car (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr (children (car (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (children (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable6))))))
   (cdr (children (car (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable6))))))
   (children (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable6))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (car (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr (children (car (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (children (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable6)))))
   (data (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr contrived_variable6))))))
   (pred (data (car (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr contrived_variable6))))))
   (data (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable6)))))))
   (pred (pred (data (car (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable6)))))))
   (pred (data (car (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable6)))))))
   (data (car (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable6))) (cdr (cdr contrived_variable6)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable6))) (cdr contrived_variable6))))
(assert (not (= (cdr (cdr (cdr contrived_variable6))) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable6)))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable6)))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable6)))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr contrived_variable6))))))
   (car (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (children (car (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable6))))))
   (children (car (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (car (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (children (car (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr contrived_variable6))))))
   (data (car (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr contrived_variable6)))))))
   (pred (data (car (cdr (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr contrived_variable6)))))))
   (data (car (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable6))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable6))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable6)))) (cdr contrived_variable6))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable6)))) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (car (cdr (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (data (car (cdr (cdr (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))
   (cdr (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable6))))) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr (cdr contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr (cdr contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr (cdr contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   (cdr contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable6)))))))
   contrived_variable6)))
(assert (not (= (children (car contrived_variable0)) contrived_variable0)))
(assert
 (not
  (= (car (children (car contrived_variable0))) (car contrived_variable0))))
(assert
 (not
  (= (children (car (children (car contrived_variable0))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (children (car (children (car contrived_variable0))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable0)))))
   (car (children (car contrived_variable0))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable0)))))
   (car contrived_variable0))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable0))))))
   (children (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable0))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable0)))))))
   (car (children (car (children (car contrived_variable0))))))))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable0)))))))
   (car (children (car contrived_variable0))))))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable0)))))))
   (car contrived_variable0))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable0)))))))
   (children (car (children (car (children (car contrived_variable0)))))))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable0)))))))
   (children (car (children (car contrived_variable0)))))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (=
   (pred (data (car (children (car (children (car contrived_variable0)))))))
   (data (car (children (car (children (car contrived_variable0)))))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable0)))))
   (children (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable0)))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car (children (car contrived_variable0))))))
   (car (children (car contrived_variable0))))))
(assert
 (not
  (= (car (cdr (children (car (children (car contrived_variable0))))))
   (car contrived_variable0))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable0)))))))
   (cdr (children (car (children (car contrived_variable0))))))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable0)))))))
   (children (car (children (car contrived_variable0)))))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable0))))))
   (cdr (children (car (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable0))))))
   (children (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable0))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car contrived_variable0)))))))
   (car (children (car contrived_variable0))))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car contrived_variable0)))))))
   (car contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable0)))))))
   (cdr (cdr (children (car (children (car contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable0)))))))
   (cdr (children (car (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable0)))))))
   (children (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable0)))))
   (data (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car contrived_variable0))))))
   (pred (data (car (children (car contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car contrived_variable0))))))
   (data (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable0)))))))
   (pred (pred (data (car (children (car contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable0)))))))
   (pred (data (car (children (car contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable0)))))))
   (data (car (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable0)))
   (children (car contrived_variable0)))))
(assert
 (not (= (cdr (children (car contrived_variable0))) contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable0))))
   (car contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable0)))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable0)))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr (children (car contrived_variable0))))))
   (car (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (car (children (car (cdr (children (car contrived_variable0))))))
   (car contrived_variable0))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable0)))))))
   (children (car (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable0)))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable0))))))
   (children (car (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable0))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable0))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car contrived_variable0)))))))
   (car (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car contrived_variable0)))))))
   (car contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable0)))))))
   (cdr (children (car (cdr (children (car contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable0)))))))
   (children (car (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable0)))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr (children (car contrived_variable0))))))
   (data (car (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car contrived_variable0)))))))
   (pred (data (car (cdr (children (car contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car contrived_variable0)))))))
   (data (car (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable0))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable0))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable0)))) contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable0)))))
   (car contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable0))))))
   (cdr (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable0))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable0))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car contrived_variable0)))))))
   (car (cdr (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car contrived_variable0)))))))
   (car contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable0)))))))
   (children (car (cdr (cdr (children (car contrived_variable0)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car contrived_variable0)))))))
   (data (car (cdr (cdr (children (car contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable0)))))
   (cdr (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable0)))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable0)))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car contrived_variable0))))))
   (car contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (cdr (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable0))))))
   (cdr (cdr (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable0))))))
   (cdr (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable0))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable0))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (car contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (cdr (cdr (children (car contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (cdr (children (car contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (cdr (children (car contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   (children (car contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car contrived_variable0))) (data (car contrived_variable0)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable0))))
   (pred (data (car contrived_variable0))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable0))))
   (data (car contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable0)))))
   (pred (pred (data (car contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable0)))))
   (pred (data (car contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable0)))))
   (data (car contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable0))))))
   (pred (pred (pred (data (car contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable0))))))
   (pred (pred (data (car contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable0))))))
   (pred (data (car contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable0))))))
   (data (car contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable0)))))))
   (pred (pred (pred (pred (data (car contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable0)))))))
   (pred (pred (pred (data (car contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable0)))))))
   (pred (pred (data (car contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable0)))))))
   (pred (data (car contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable0)))))))
   (data (car contrived_variable0)))))
(assert (not (= (cdr contrived_variable0) contrived_variable0)))
(assert
 (not
  (= (children (car (cdr contrived_variable0))) (cdr contrived_variable0))))
(assert
 (not (= (children (car (cdr contrived_variable0))) contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable0))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable0)))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable0)))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (children (car (cdr contrived_variable0))))))
   (car (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (car (children (car (children (car (cdr contrived_variable0))))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable0)))))))
   (children (car (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable0)))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable0))))))
   (children (car (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable0))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr contrived_variable0)))))))
   (car (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr contrived_variable0)))))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable0)))))))
   (cdr (children (car (children (car (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable0)))))))
   (children (car (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable0)))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (children (car (cdr contrived_variable0))))))
   (data (car (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr contrived_variable0)))))))
   (pred (data (car (children (car (cdr contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr contrived_variable0)))))))
   (data (car (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable0))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable0))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable0)))) contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable0)))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable0))))))
   (cdr (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable0))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr contrived_variable0)))))))
   (car (cdr (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr contrived_variable0)))))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable0)))))))
   (children (car (cdr (children (car (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable0)))))))
   (cdr (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable0)))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr contrived_variable0)))))))
   (data (car (cdr (children (car (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable0)))))
   (cdr (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable0)))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable0)))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr contrived_variable0))))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr (cdr (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable0))))))
   (cdr (cdr (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable0))))))
   (cdr (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable0))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (car (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr (cdr (children (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr (children (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (children (car (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable0))))
   (data (car (cdr contrived_variable0))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable0)))))
   (pred (data (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable0)))))
   (data (car (cdr contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable0))))))
   (pred (pred (data (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable0))))))
   (pred (data (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable0))))))
   (data (car (cdr contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable0)))))))
   (pred (pred (pred (data (car (cdr contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable0)))))))
   (pred (pred (data (car (cdr contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable0)))))))
   (pred (data (car (cdr contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable0)))))))
   (data (car (cdr contrived_variable0))))))
(assert (not (= (cdr (cdr contrived_variable0)) (cdr contrived_variable0))))
(assert (not (= (cdr (cdr contrived_variable0)) contrived_variable0)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable0))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable0))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable0)))) contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable0)))))
   (car (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable0))))))
   (children (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable0))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr contrived_variable0)))))))
   (car (children (car (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr contrived_variable0)))))))
   (car (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable0)))))))
   (children (car (children (car (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable0)))))))
   (children (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr contrived_variable0)))))))
   (data (car (children (car (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable0)))))
   (children (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable0)))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable0)))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr contrived_variable0))))))
   (car (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr (children (car (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (children (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable0))))))
   (cdr (children (car (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable0))))))
   (children (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable0))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (car (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr (children (car (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (children (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable0)))))
   (data (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr contrived_variable0))))))
   (pred (data (car (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr contrived_variable0))))))
   (data (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable0)))))))
   (pred (pred (data (car (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable0)))))))
   (pred (data (car (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable0)))))))
   (data (car (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable0))) (cdr (cdr contrived_variable0)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable0))) (cdr contrived_variable0))))
(assert (not (= (cdr (cdr (cdr contrived_variable0))) contrived_variable0)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable0)))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable0)))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable0)))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr contrived_variable0))))))
   (car (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (children (car (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable0))))))
   (children (car (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (car (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (children (car (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr contrived_variable0))))))
   (data (car (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr contrived_variable0)))))))
   (pred (data (car (cdr (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr contrived_variable0)))))))
   (data (car (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable0))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable0))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable0)))) (cdr contrived_variable0))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable0)))) contrived_variable0)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (car (cdr (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (data (car (cdr (cdr (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))
   (cdr (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable0))))) contrived_variable0)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable0))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr (cdr contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr (cdr contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr (cdr contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   (cdr contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable0)))))))
   contrived_variable0)))
(assert (not (= (children (car contrived_variable1)) contrived_variable1)))
(assert
 (not
  (= (car (children (car contrived_variable1))) (car contrived_variable1))))
(assert
 (not
  (= (children (car (children (car contrived_variable1))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (children (car (children (car contrived_variable1))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable1)))))
   (car (children (car contrived_variable1))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable1)))))
   (car contrived_variable1))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable1))))))
   (children (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable1))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (children (car (children (car (children (car contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable1)))))))
   (car (children (car (children (car contrived_variable1))))))))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable1)))))))
   (car (children (car contrived_variable1))))))
(assert
 (not
  (=
   (car (children (car (children (car (children (car
    contrived_variable1)))))))
   (car contrived_variable1))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable1)))))))
   (children (car (children (car (children (car contrived_variable1)))))))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable1)))))))
   (children (car (children (car contrived_variable1)))))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (=
   (cdr (children (car (children (car (children (car
    contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (=
   (pred (data (car (children (car (children (car contrived_variable1)))))))
   (data (car (children (car (children (car contrived_variable1)))))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable1)))))
   (children (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable1)))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car (children (car contrived_variable1))))))
   (car (children (car contrived_variable1))))))
(assert
 (not
  (= (car (cdr (children (car (children (car contrived_variable1))))))
   (car contrived_variable1))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable1)))))))
   (cdr (children (car (children (car contrived_variable1))))))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable1)))))))
   (children (car (children (car contrived_variable1)))))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (=
   (children (car (cdr (children (car (children (car
    contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable1))))))
   (cdr (children (car (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable1))))))
   (children (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable1))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car contrived_variable1)))))))
   (car (children (car contrived_variable1))))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car contrived_variable1)))))))
   (car contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable1)))))))
   (cdr (cdr (children (car (children (car contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable1)))))))
   (cdr (children (car (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable1)))))))
   (children (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable1)))))
   (data (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car contrived_variable1))))))
   (pred (data (car (children (car contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car contrived_variable1))))))
   (data (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable1)))))))
   (pred (pred (data (car (children (car contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable1)))))))
   (pred (data (car (children (car contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car contrived_variable1)))))))
   (data (car (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable1)))
   (children (car contrived_variable1)))))
(assert
 (not (= (cdr (children (car contrived_variable1))) contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable1))))
   (car contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable1)))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable1)))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr (children (car contrived_variable1))))))
   (car (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (car (children (car (cdr (children (car contrived_variable1))))))
   (car contrived_variable1))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable1)))))))
   (children (car (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable1)))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (=
   (children (car (children (car (cdr (children (car
    contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable1))))))
   (children (car (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable1))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable1))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car contrived_variable1)))))))
   (car (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car contrived_variable1)))))))
   (car contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable1)))))))
   (cdr (children (car (cdr (children (car contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable1)))))))
   (children (car (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable1)))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr (children (car contrived_variable1))))))
   (data (car (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car contrived_variable1)))))))
   (pred (data (car (cdr (children (car contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car contrived_variable1)))))))
   (data (car (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable1))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable1))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable1)))) contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable1)))))
   (car contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable1))))))
   (cdr (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable1))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable1))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car contrived_variable1)))))))
   (car (cdr (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car contrived_variable1)))))))
   (car contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable1)))))))
   (children (car (cdr (cdr (children (car contrived_variable1)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car contrived_variable1)))))))
   (data (car (cdr (cdr (children (car contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable1)))))
   (cdr (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable1)))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable1)))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car contrived_variable1))))))
   (car contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (cdr (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable1))))))
   (cdr (cdr (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable1))))))
   (cdr (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable1))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable1))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (car contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (cdr (cdr (children (car contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (cdr (children (car contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (cdr (children (car contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   (children (car contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car contrived_variable1))) (data (car contrived_variable1)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable1))))
   (pred (data (car contrived_variable1))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable1))))
   (data (car contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable1)))))
   (pred (pred (data (car contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable1)))))
   (pred (data (car contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable1)))))
   (data (car contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable1))))))
   (pred (pred (pred (data (car contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable1))))))
   (pred (pred (data (car contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable1))))))
   (pred (data (car contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car contrived_variable1))))))
   (data (car contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable1)))))))
   (pred (pred (pred (pred (data (car contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable1)))))))
   (pred (pred (pred (data (car contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable1)))))))
   (pred (pred (data (car contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable1)))))))
   (pred (data (car contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car contrived_variable1)))))))
   (data (car contrived_variable1)))))
(assert (not (= (cdr contrived_variable1) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr contrived_variable1))) (cdr contrived_variable1))))
(assert
 (not (= (children (car (cdr contrived_variable1))) contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable1))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable1)))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable1)))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (children (car (cdr contrived_variable1))))))
   (car (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (car (children (car (children (car (cdr contrived_variable1))))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable1)))))))
   (children (car (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable1)))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (=
   (children (car (children (car (children (car (cdr
    contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable1))))))
   (children (car (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable1))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr contrived_variable1)))))))
   (car (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr contrived_variable1)))))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable1)))))))
   (cdr (children (car (children (car (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable1)))))))
   (children (car (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable1)))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (children (car (cdr contrived_variable1))))))
   (data (car (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr contrived_variable1)))))))
   (pred (data (car (children (car (cdr contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr contrived_variable1)))))))
   (data (car (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable1))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable1))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable1)))) contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable1)))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable1))))))
   (cdr (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable1))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr contrived_variable1)))))))
   (car (cdr (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr contrived_variable1)))))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable1)))))))
   (children (car (cdr (children (car (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable1)))))))
   (cdr (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable1)))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr contrived_variable1)))))))
   (data (car (cdr (children (car (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable1)))))
   (cdr (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable1)))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable1)))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr contrived_variable1))))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr (cdr (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable1))))))
   (cdr (cdr (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable1))))))
   (cdr (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable1))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (car (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr (cdr (children (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr (children (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (children (car (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable1))))
   (data (car (cdr contrived_variable1))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable1)))))
   (pred (data (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable1)))))
   (data (car (cdr contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable1))))))
   (pred (pred (data (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable1))))))
   (pred (data (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr contrived_variable1))))))
   (data (car (cdr contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable1)))))))
   (pred (pred (pred (data (car (cdr contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable1)))))))
   (pred (pred (data (car (cdr contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable1)))))))
   (pred (data (car (cdr contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr contrived_variable1)))))))
   (data (car (cdr contrived_variable1))))))
(assert (not (= (cdr (cdr contrived_variable1)) (cdr contrived_variable1))))
(assert (not (= (cdr (cdr contrived_variable1)) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable1))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable1))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable1)))) contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable1)))))
   (car (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable1))))))
   (children (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable1))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr contrived_variable1)))))))
   (car (children (car (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr contrived_variable1)))))))
   (car (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable1)))))))
   (children (car (children (car (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable1)))))))
   (children (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr contrived_variable1)))))))
   (data (car (children (car (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable1)))))
   (children (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable1)))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable1)))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr contrived_variable1))))))
   (car (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr (children (car (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (children (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable1))))))
   (cdr (children (car (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable1))))))
   (children (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable1))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (car (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr (children (car (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (children (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable1)))))
   (data (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr contrived_variable1))))))
   (pred (data (car (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr contrived_variable1))))))
   (data (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable1)))))))
   (pred (pred (data (car (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable1)))))))
   (pred (data (car (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr contrived_variable1)))))))
   (data (car (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable1))) (cdr (cdr contrived_variable1)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable1))) (cdr contrived_variable1))))
(assert (not (= (cdr (cdr (cdr contrived_variable1))) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable1)))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable1)))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable1)))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr contrived_variable1))))))
   (car (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (children (car (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable1))))))
   (children (car (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (car (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (children (car (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr contrived_variable1))))))
   (data (car (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr contrived_variable1)))))))
   (pred (data (car (cdr (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr contrived_variable1)))))))
   (data (car (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable1))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable1))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable1)))) (cdr contrived_variable1))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable1)))) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (car (cdr (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (data (car (cdr (cdr (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))
   (cdr (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable1))))) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (cdr (cdr contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr (cdr contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr (cdr contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr (cdr contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   (cdr contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr contrived_variable1)))))))
   contrived_variable1)))
(assert (not (= (children (car x6)) x6)))
(assert (not (= (car (children (car x6))) (car x6))))
(assert (not (= (children (car (children (car x6)))) (children (car x6)))))
(assert (not (= (children (car (children (car x6)))) x6)))
(assert
 (not
  (= (car (children (car (children (car x6))))) (car (children (car x6))))))
(assert (not (= (car (children (car (children (car x6))))) (car x6))))
(assert
 (not
  (= (children (car (children (car (children (car x6))))))
   (children (car (children (car x6)))))))
(assert
 (not
  (= (children (car (children (car (children (car x6))))))
   (children (car x6)))))
(assert (not (= (children (car (children (car (children (car x6)))))) x6)))
(assert
 (not
  (= (car (children (car (children (car (children (car x6)))))))
   (car (children (car (children (car x6))))))))
(assert
 (not
  (= (car (children (car (children (car (children (car x6)))))))
   (car (children (car x6))))))
(assert
 (not
  (= (car (children (car (children (car (children (car x6))))))) (car x6))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x6)))))))
   (children (car (children (car (children (car x6)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x6)))))))
   (children (car (children (car x6)))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x6)))))))
   (children (car x6)))))
(assert
 (not (= (cdr (children (car (children (car (children (car x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (children (car (children (car x6)))))))
   (data (car (children (car (children (car x6)))))))))
(assert
 (not
  (= (cdr (children (car (children (car x6)))))
   (children (car (children (car x6)))))))
(assert
 (not (= (cdr (children (car (children (car x6))))) (children (car x6)))))
(assert (not (= (cdr (children (car (children (car x6))))) x6)))
(assert
 (not
  (= (car (cdr (children (car (children (car x6))))))
   (car (children (car x6))))))
(assert (not (= (car (cdr (children (car (children (car x6)))))) (car x6))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x6)))))))
   (cdr (children (car (children (car x6))))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x6)))))))
   (children (car (children (car x6)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x6)))))))
   (children (car x6)))))
(assert
 (not (= (children (car (cdr (children (car (children (car x6))))))) x6)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x6))))))
   (cdr (children (car (children (car x6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x6))))))
   (children (car (children (car x6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x6)))))) (children (car x6)))))
(assert (not (= (cdr (cdr (children (car (children (car x6)))))) x6)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car x6)))))))
   (car (children (car x6))))))
(assert
 (not (= (car (cdr (cdr (children (car (children (car x6))))))) (car x6))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x6)))))))
   (cdr (cdr (children (car (children (car x6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x6)))))))
   (cdr (children (car (children (car x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x6)))))))
   (children (car (children (car x6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x6)))))))
   (children (car x6)))))
(assert (not (= (cdr (cdr (cdr (children (car (children (car x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (children (car x6))))) (data (car (children (car x6)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x6))))))
   (pred (data (car (children (car x6))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x6))))))
   (data (car (children (car x6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x6)))))))
   (pred (pred (data (car (children (car x6)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x6)))))))
   (pred (data (car (children (car x6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x6)))))))
   (data (car (children (car x6)))))))
(assert (not (= (cdr (children (car x6))) (children (car x6)))))
(assert (not (= (cdr (children (car x6))) x6)))
(assert (not (= (car (cdr (children (car x6)))) (car x6))))
(assert
 (not
  (= (children (car (cdr (children (car x6))))) (cdr (children (car x6))))))
(assert
 (not (= (children (car (cdr (children (car x6))))) (children (car x6)))))
(assert (not (= (children (car (cdr (children (car x6))))) x6)))
(assert
 (not
  (= (car (children (car (cdr (children (car x6))))))
   (car (cdr (children (car x6)))))))
(assert (not (= (car (children (car (cdr (children (car x6)))))) (car x6))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x6)))))))
   (children (car (cdr (children (car x6))))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x6)))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x6)))))))
   (children (car x6)))))
(assert
 (not (= (children (car (children (car (cdr (children (car x6))))))) x6)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x6))))))
   (children (car (cdr (children (car x6))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x6))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x6)))))) (children (car x6)))))
(assert (not (= (cdr (children (car (cdr (children (car x6)))))) x6)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car x6)))))))
   (car (cdr (children (car x6)))))))
(assert
 (not (= (car (cdr (children (car (cdr (children (car x6))))))) (car x6))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x6)))))))
   (cdr (children (car (cdr (children (car x6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x6)))))))
   (children (car (cdr (children (car x6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x6)))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x6)))))))
   (children (car x6)))))
(assert (not (= (cdr (cdr (children (car (cdr (children (car x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x6))))))
   (data (car (cdr (children (car x6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car x6)))))))
   (pred (data (car (cdr (children (car x6)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car x6)))))))
   (data (car (cdr (children (car x6))))))))
(assert (not (= (cdr (cdr (children (car x6)))) (cdr (children (car x6))))))
(assert (not (= (cdr (cdr (children (car x6)))) (children (car x6)))))
(assert (not (= (cdr (cdr (children (car x6)))) x6)))
(assert (not (= (car (cdr (cdr (children (car x6))))) (car x6))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x6))))))
   (cdr (cdr (children (car x6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x6))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x6)))))) (children (car x6)))))
(assert (not (= (children (car (cdr (cdr (children (car x6)))))) x6)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car x6)))))))
   (car (cdr (cdr (children (car x6))))))))
(assert
 (not (= (car (children (car (cdr (cdr (children (car x6))))))) (car x6))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x6)))))))
   (children (car (cdr (cdr (children (car x6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x6)))))))
   (cdr (cdr (children (car x6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x6)))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x6)))))))
   (children (car x6)))))
(assert (not (= (cdr (children (car (cdr (cdr (children (car x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car x6)))))))
   (data (car (cdr (cdr (children (car x6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x6))))) (cdr (cdr (children (car x6)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x6))))) (cdr (children (car x6))))))
(assert (not (= (cdr (cdr (cdr (children (car x6))))) (children (car x6)))))
(assert (not (= (cdr (cdr (cdr (children (car x6))))) x6)))
(assert (not (= (car (cdr (cdr (cdr (children (car x6)))))) (car x6))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x6)))))))
   (cdr (cdr (cdr (children (car x6))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x6)))))))
   (cdr (cdr (children (car x6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x6)))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x6)))))))
   (children (car x6)))))
(assert (not (= (children (car (cdr (cdr (cdr (children (car x6))))))) x6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x6))))))
   (cdr (cdr (cdr (children (car x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x6))))))
   (cdr (cdr (children (car x6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x6)))))) (cdr (children (car x6))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x6)))))) (children (car x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x6)))))) x6)))
(assert (not (= (car (cdr (cdr (cdr (cdr (children (car x6))))))) (car x6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x6)))))))
   (cdr (cdr (cdr (cdr (children (car x6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x6)))))))
   (cdr (cdr (cdr (children (car x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x6)))))))
   (cdr (cdr (children (car x6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x6)))))))
   (cdr (children (car x6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x6))))))) (children (car x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children (car x6))))))) x6)))
(assert (not (= (pred (data (car x6))) (data (car x6)))))
(assert (not (= (pred (pred (data (car x6)))) (pred (data (car x6))))))
(assert (not (= (pred (pred (data (car x6)))) (data (car x6)))))
(assert
 (not (= (pred (pred (pred (data (car x6))))) (pred (pred (data (car x6)))))))
(assert (not (= (pred (pred (pred (data (car x6))))) (pred (data (car x6))))))
(assert (not (= (pred (pred (pred (data (car x6))))) (data (car x6)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x6))))))
   (pred (pred (pred (data (car x6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x6))))))
   (pred (pred (data (car x6)))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x6)))))) (pred (data (car x6))))))
(assert (not (= (pred (pred (pred (pred (data (car x6)))))) (data (car x6)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x6)))))))
   (pred (pred (pred (pred (data (car x6)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x6)))))))
   (pred (pred (pred (data (car x6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x6)))))))
   (pred (pred (data (car x6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x6)))))))
   (pred (data (car x6))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data (car x6))))))) (data (car x6)))))
(assert (not (= (cdr x6) x6)))
(assert (not (= (children (car (cdr x6))) (cdr x6))))
(assert (not (= (children (car (cdr x6))) x6)))
(assert (not (= (car (children (car (cdr x6)))) (car (cdr x6)))))
(assert
 (not
  (= (children (car (children (car (cdr x6))))) (children (car (cdr x6))))))
(assert (not (= (children (car (children (car (cdr x6))))) (cdr x6))))
(assert (not (= (children (car (children (car (cdr x6))))) x6)))
(assert
 (not
  (= (car (children (car (children (car (cdr x6))))))
   (car (children (car (cdr x6)))))))
(assert
 (not (= (car (children (car (children (car (cdr x6)))))) (car (cdr x6)))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x6)))))))
   (children (car (children (car (cdr x6))))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x6)))))))
   (children (car (cdr x6))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x6))))))) (cdr x6))))
(assert
 (not (= (children (car (children (car (children (car (cdr x6))))))) x6)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x6))))))
   (children (car (children (car (cdr x6))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x6))))))
   (children (car (cdr x6))))))
(assert (not (= (cdr (children (car (children (car (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (children (car (children (car (cdr x6)))))) x6)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr x6)))))))
   (car (children (car (cdr x6)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr x6))))))) (car (cdr x6)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x6)))))))
   (cdr (children (car (children (car (cdr x6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x6)))))))
   (children (car (children (car (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x6)))))))
   (children (car (cdr x6))))))
(assert
 (not (= (cdr (cdr (children (car (children (car (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (cdr (children (car (children (car (cdr x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x6))))))
   (data (car (children (car (cdr x6))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr x6)))))))
   (pred (data (car (children (car (cdr x6)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr x6)))))))
   (data (car (children (car (cdr x6))))))))
(assert (not (= (cdr (children (car (cdr x6)))) (children (car (cdr x6))))))
(assert (not (= (cdr (children (car (cdr x6)))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr x6)))) x6)))
(assert (not (= (car (cdr (children (car (cdr x6))))) (car (cdr x6)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x6))))))
   (cdr (children (car (cdr x6)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x6))))))
   (children (car (cdr x6))))))
(assert (not (= (children (car (cdr (children (car (cdr x6)))))) (cdr x6))))
(assert (not (= (children (car (cdr (children (car (cdr x6)))))) x6)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr x6)))))))
   (car (cdr (children (car (cdr x6))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr x6))))))) (car (cdr x6)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x6)))))))
   (children (car (cdr (children (car (cdr x6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x6)))))))
   (cdr (children (car (cdr x6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x6)))))))
   (children (car (cdr x6))))))
(assert
 (not (= (cdr (children (car (cdr (children (car (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr (children (car (cdr x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr x6)))))))
   (data (car (cdr (children (car (cdr x6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x6))))) (cdr (children (car (cdr x6)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x6))))) (children (car (cdr x6))))))
(assert (not (= (cdr (cdr (children (car (cdr x6))))) (cdr x6))))
(assert (not (= (cdr (cdr (children (car (cdr x6))))) x6)))
(assert (not (= (car (cdr (cdr (children (car (cdr x6)))))) (car (cdr x6)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x6)))))))
   (cdr (cdr (children (car (cdr x6))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x6)))))))
   (cdr (children (car (cdr x6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x6)))))))
   (children (car (cdr x6))))))
(assert
 (not (= (children (car (cdr (cdr (children (car (cdr x6))))))) (cdr x6))))
(assert (not (= (children (car (cdr (cdr (children (car (cdr x6))))))) x6)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x6))))))
   (cdr (cdr (children (car (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x6))))))
   (cdr (children (car (cdr x6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x6)))))) (children (car (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x6)))))) x6)))
(assert
 (not (= (car (cdr (cdr (cdr (children (car (cdr x6))))))) (car (cdr x6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x6)))))))
   (cdr (cdr (cdr (children (car (cdr x6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x6)))))))
   (cdr (cdr (children (car (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x6)))))))
   (cdr (children (car (cdr x6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x6)))))))
   (children (car (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr x6))))))) x6)))
(assert (not (= (pred (data (car (cdr x6)))) (data (car (cdr x6))))))
(assert
 (not (= (pred (pred (data (car (cdr x6))))) (pred (data (car (cdr x6)))))))
(assert (not (= (pred (pred (data (car (cdr x6))))) (data (car (cdr x6))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x6))))))
   (pred (pred (data (car (cdr x6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x6)))))) (pred (data (car (cdr x6)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x6)))))) (data (car (cdr x6))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x6)))))))
   (pred (pred (pred (data (car (cdr x6)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x6)))))))
   (pred (pred (data (car (cdr x6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x6)))))))
   (pred (data (car (cdr x6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x6))))))) (data (car (cdr x6))))))
(assert (not (= (cdr (cdr x6)) (cdr x6))))
(assert (not (= (cdr (cdr x6)) x6)))
(assert (not (= (children (car (cdr (cdr x6)))) (cdr (cdr x6)))))
(assert (not (= (children (car (cdr (cdr x6)))) (cdr x6))))
(assert (not (= (children (car (cdr (cdr x6)))) x6)))
(assert (not (= (car (children (car (cdr (cdr x6))))) (car (cdr (cdr x6))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x6))))))
   (children (car (cdr (cdr x6)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (children (car (children (car (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (children (car (children (car (cdr (cdr x6)))))) x6)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr x6)))))))
   (car (children (car (cdr (cdr x6))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr x6)))))))
   (car (cdr (cdr x6))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x6)))))))
   (children (car (children (car (cdr (cdr x6)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x6)))))))
   (children (car (cdr (cdr x6)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert
 (not (= (cdr (children (car (children (car (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (children (car (children (car (cdr (cdr x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr x6)))))))
   (data (car (children (car (cdr (cdr x6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x6))))) (children (car (cdr (cdr x6)))))))
(assert (not (= (cdr (children (car (cdr (cdr x6))))) (cdr (cdr x6)))))
(assert (not (= (cdr (children (car (cdr (cdr x6))))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr (cdr x6))))) x6)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x6)))))) (car (cdr (cdr x6))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x6)))))))
   (cdr (children (car (cdr (cdr x6))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x6)))))))
   (children (car (cdr (cdr x6)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert
 (not (= (children (car (cdr (children (car (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (children (car (cdr (children (car (cdr (cdr x6))))))) x6)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x6))))))
   (cdr (children (car (cdr (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x6))))))
   (children (car (cdr (cdr x6)))))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x6)))))) x6)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr x6))))))) (car (cdr (cdr x6))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x6)))))))
   (cdr (cdr (children (car (cdr (cdr x6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x6)))))))
   (cdr (children (car (cdr (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x6)))))))
   (children (car (cdr (cdr x6)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr x6))))))) x6)))
(assert
 (not (= (pred (data (car (cdr (cdr x6))))) (data (car (cdr (cdr x6)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x6))))))
   (pred (data (car (cdr (cdr x6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x6)))))) (data (car (cdr (cdr x6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x6)))))))
   (pred (pred (data (car (cdr (cdr x6)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x6)))))))
   (pred (data (car (cdr (cdr x6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x6)))))))
   (data (car (cdr (cdr x6)))))))
(assert (not (= (cdr (cdr (cdr x6))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr x6))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr x6))) x6)))
(assert (not (= (children (car (cdr (cdr (cdr x6))))) (cdr (cdr (cdr x6))))))
(assert (not (= (children (car (cdr (cdr (cdr x6))))) (cdr (cdr x6)))))
(assert (not (= (children (car (cdr (cdr (cdr x6))))) (cdr x6))))
(assert (not (= (children (car (cdr (cdr (cdr x6))))) x6)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x6)))))) (car (cdr (cdr (cdr x6)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x6)))))))
   (children (car (cdr (cdr (cdr x6))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x6)))))))
   (cdr (cdr (cdr x6))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert
 (not (= (children (car (children (car (cdr (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (children (car (children (car (cdr (cdr (cdr x6))))))) x6)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x6))))))
   (children (car (cdr (cdr (cdr x6))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) x6)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr x6)))))))
   (car (cdr (cdr (cdr x6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x6)))))))
   (cdr (children (car (cdr (cdr (cdr x6)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x6)))))))
   (children (car (cdr (cdr (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x6))))))) (cdr (cdr (cdr x6))))))
(assert
 (not (= (cdr (cdr (children (car (cdr (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x6))))))
   (data (car (cdr (cdr (cdr x6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr x6)))))))
   (pred (data (car (cdr (cdr (cdr x6)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr x6)))))))
   (data (car (cdr (cdr (cdr x6))))))))
(assert (not (= (cdr (cdr (cdr (cdr x6)))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr x6)))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (cdr x6)))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr x6)))) x6)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr (cdr x6)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr x6))))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x6)))))) x6)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr x6)))))))
   (car (cdr (cdr (cdr (cdr x6))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x6)))))))
   (children (car (cdr (cdr (cdr (cdr x6)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x6)))))))
   (cdr (cdr (cdr (cdr x6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr (cdr x6))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr x6))))))) x6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr x6)))))))
   (data (car (cdr (cdr (cdr (cdr x6)))))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr (cdr (cdr (cdr x6)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) x6)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x6)))))))
   (cdr (cdr (cdr (cdr (cdr x6))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x6)))))))
   (cdr (cdr (cdr (cdr x6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr (cdr x6))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr x6))))))) x6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr (cdr (cdr x6))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr (cdr x6)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) x6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr x6)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6)))))))
   (cdr (cdr (cdr (cdr (cdr x6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr (cdr (cdr x6)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6))))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x6))))))) x6)))
(assert (not (= (children (car x5)) x5)))
(assert (not (= (car (children (car x5))) (car x5))))
(assert (not (= (children (car (children (car x5)))) (children (car x5)))))
(assert (not (= (children (car (children (car x5)))) x5)))
(assert
 (not
  (= (car (children (car (children (car x5))))) (car (children (car x5))))))
(assert (not (= (car (children (car (children (car x5))))) (car x5))))
(assert
 (not
  (= (children (car (children (car (children (car x5))))))
   (children (car (children (car x5)))))))
(assert
 (not
  (= (children (car (children (car (children (car x5))))))
   (children (car x5)))))
(assert (not (= (children (car (children (car (children (car x5)))))) x5)))
(assert
 (not
  (= (car (children (car (children (car (children (car x5)))))))
   (car (children (car (children (car x5))))))))
(assert
 (not
  (= (car (children (car (children (car (children (car x5)))))))
   (car (children (car x5))))))
(assert
 (not
  (= (car (children (car (children (car (children (car x5))))))) (car x5))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x5)))))))
   (children (car (children (car (children (car x5)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x5)))))))
   (children (car (children (car x5)))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x5)))))))
   (children (car x5)))))
(assert
 (not (= (cdr (children (car (children (car (children (car x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (children (car (children (car x5)))))))
   (data (car (children (car (children (car x5)))))))))
(assert
 (not
  (= (cdr (children (car (children (car x5)))))
   (children (car (children (car x5)))))))
(assert
 (not (= (cdr (children (car (children (car x5))))) (children (car x5)))))
(assert (not (= (cdr (children (car (children (car x5))))) x5)))
(assert
 (not
  (= (car (cdr (children (car (children (car x5))))))
   (car (children (car x5))))))
(assert (not (= (car (cdr (children (car (children (car x5)))))) (car x5))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x5)))))))
   (cdr (children (car (children (car x5))))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x5)))))))
   (children (car (children (car x5)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x5)))))))
   (children (car x5)))))
(assert
 (not (= (children (car (cdr (children (car (children (car x5))))))) x5)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x5))))))
   (cdr (children (car (children (car x5))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x5))))))
   (children (car (children (car x5)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x5)))))) (children (car x5)))))
(assert (not (= (cdr (cdr (children (car (children (car x5)))))) x5)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car x5)))))))
   (car (children (car x5))))))
(assert
 (not (= (car (cdr (cdr (children (car (children (car x5))))))) (car x5))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x5)))))))
   (cdr (cdr (children (car (children (car x5)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x5)))))))
   (cdr (children (car (children (car x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x5)))))))
   (children (car (children (car x5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x5)))))))
   (children (car x5)))))
(assert (not (= (cdr (cdr (cdr (children (car (children (car x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (children (car x5))))) (data (car (children (car x5)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x5))))))
   (pred (data (car (children (car x5))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x5))))))
   (data (car (children (car x5)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x5)))))))
   (pred (pred (data (car (children (car x5)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x5)))))))
   (pred (data (car (children (car x5))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x5)))))))
   (data (car (children (car x5)))))))
(assert (not (= (cdr (children (car x5))) (children (car x5)))))
(assert (not (= (cdr (children (car x5))) x5)))
(assert (not (= (car (cdr (children (car x5)))) (car x5))))
(assert
 (not
  (= (children (car (cdr (children (car x5))))) (cdr (children (car x5))))))
(assert
 (not (= (children (car (cdr (children (car x5))))) (children (car x5)))))
(assert (not (= (children (car (cdr (children (car x5))))) x5)))
(assert
 (not
  (= (car (children (car (cdr (children (car x5))))))
   (car (cdr (children (car x5)))))))
(assert (not (= (car (children (car (cdr (children (car x5)))))) (car x5))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x5)))))))
   (children (car (cdr (children (car x5))))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x5)))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x5)))))))
   (children (car x5)))))
(assert
 (not (= (children (car (children (car (cdr (children (car x5))))))) x5)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x5))))))
   (children (car (cdr (children (car x5))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x5))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x5)))))) (children (car x5)))))
(assert (not (= (cdr (children (car (cdr (children (car x5)))))) x5)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car x5)))))))
   (car (cdr (children (car x5)))))))
(assert
 (not (= (car (cdr (children (car (cdr (children (car x5))))))) (car x5))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x5)))))))
   (cdr (children (car (cdr (children (car x5)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x5)))))))
   (children (car (cdr (children (car x5))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x5)))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x5)))))))
   (children (car x5)))))
(assert (not (= (cdr (cdr (children (car (cdr (children (car x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x5))))))
   (data (car (cdr (children (car x5))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car x5)))))))
   (pred (data (car (cdr (children (car x5)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car x5)))))))
   (data (car (cdr (children (car x5))))))))
(assert (not (= (cdr (cdr (children (car x5)))) (cdr (children (car x5))))))
(assert (not (= (cdr (cdr (children (car x5)))) (children (car x5)))))
(assert (not (= (cdr (cdr (children (car x5)))) x5)))
(assert (not (= (car (cdr (cdr (children (car x5))))) (car x5))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x5))))))
   (cdr (cdr (children (car x5)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x5))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x5)))))) (children (car x5)))))
(assert (not (= (children (car (cdr (cdr (children (car x5)))))) x5)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car x5)))))))
   (car (cdr (cdr (children (car x5))))))))
(assert
 (not (= (car (children (car (cdr (cdr (children (car x5))))))) (car x5))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x5)))))))
   (children (car (cdr (cdr (children (car x5)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x5)))))))
   (cdr (cdr (children (car x5)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x5)))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x5)))))))
   (children (car x5)))))
(assert (not (= (cdr (children (car (cdr (cdr (children (car x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car x5)))))))
   (data (car (cdr (cdr (children (car x5)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x5))))) (cdr (cdr (children (car x5)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x5))))) (cdr (children (car x5))))))
(assert (not (= (cdr (cdr (cdr (children (car x5))))) (children (car x5)))))
(assert (not (= (cdr (cdr (cdr (children (car x5))))) x5)))
(assert (not (= (car (cdr (cdr (cdr (children (car x5)))))) (car x5))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x5)))))))
   (cdr (cdr (cdr (children (car x5))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x5)))))))
   (cdr (cdr (children (car x5)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x5)))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x5)))))))
   (children (car x5)))))
(assert (not (= (children (car (cdr (cdr (cdr (children (car x5))))))) x5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x5))))))
   (cdr (cdr (cdr (children (car x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x5))))))
   (cdr (cdr (children (car x5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x5)))))) (cdr (children (car x5))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x5)))))) (children (car x5)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x5)))))) x5)))
(assert (not (= (car (cdr (cdr (cdr (cdr (children (car x5))))))) (car x5))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x5)))))))
   (cdr (cdr (cdr (cdr (children (car x5)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x5)))))))
   (cdr (cdr (cdr (children (car x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x5)))))))
   (cdr (cdr (children (car x5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x5)))))))
   (cdr (children (car x5))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x5))))))) (children (car x5)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children (car x5))))))) x5)))
(assert (not (= (pred (data (car x5))) (data (car x5)))))
(assert (not (= (pred (pred (data (car x5)))) (pred (data (car x5))))))
(assert (not (= (pred (pred (data (car x5)))) (data (car x5)))))
(assert
 (not (= (pred (pred (pred (data (car x5))))) (pred (pred (data (car x5)))))))
(assert (not (= (pred (pred (pred (data (car x5))))) (pred (data (car x5))))))
(assert (not (= (pred (pred (pred (data (car x5))))) (data (car x5)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x5))))))
   (pred (pred (pred (data (car x5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x5))))))
   (pred (pred (data (car x5)))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x5)))))) (pred (data (car x5))))))
(assert (not (= (pred (pred (pred (pred (data (car x5)))))) (data (car x5)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x5)))))))
   (pred (pred (pred (pred (data (car x5)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x5)))))))
   (pred (pred (pred (data (car x5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x5)))))))
   (pred (pred (data (car x5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x5)))))))
   (pred (data (car x5))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data (car x5))))))) (data (car x5)))))
(assert (not (= (cdr x5) x5)))
(assert (not (= (children (car (cdr x5))) (cdr x5))))
(assert (not (= (children (car (cdr x5))) x5)))
(assert (not (= (car (children (car (cdr x5)))) (car (cdr x5)))))
(assert
 (not
  (= (children (car (children (car (cdr x5))))) (children (car (cdr x5))))))
(assert (not (= (children (car (children (car (cdr x5))))) (cdr x5))))
(assert (not (= (children (car (children (car (cdr x5))))) x5)))
(assert
 (not
  (= (car (children (car (children (car (cdr x5))))))
   (car (children (car (cdr x5)))))))
(assert
 (not (= (car (children (car (children (car (cdr x5)))))) (car (cdr x5)))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x5)))))))
   (children (car (children (car (cdr x5))))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x5)))))))
   (children (car (cdr x5))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x5))))))) (cdr x5))))
(assert
 (not (= (children (car (children (car (children (car (cdr x5))))))) x5)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x5))))))
   (children (car (children (car (cdr x5))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x5))))))
   (children (car (cdr x5))))))
(assert (not (= (cdr (children (car (children (car (cdr x5)))))) (cdr x5))))
(assert (not (= (cdr (children (car (children (car (cdr x5)))))) x5)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr x5)))))))
   (car (children (car (cdr x5)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr x5))))))) (car (cdr x5)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x5)))))))
   (cdr (children (car (children (car (cdr x5)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x5)))))))
   (children (car (children (car (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x5)))))))
   (children (car (cdr x5))))))
(assert
 (not (= (cdr (cdr (children (car (children (car (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (cdr (children (car (children (car (cdr x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x5))))))
   (data (car (children (car (cdr x5))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr x5)))))))
   (pred (data (car (children (car (cdr x5)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr x5)))))))
   (data (car (children (car (cdr x5))))))))
(assert (not (= (cdr (children (car (cdr x5)))) (children (car (cdr x5))))))
(assert (not (= (cdr (children (car (cdr x5)))) (cdr x5))))
(assert (not (= (cdr (children (car (cdr x5)))) x5)))
(assert (not (= (car (cdr (children (car (cdr x5))))) (car (cdr x5)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x5))))))
   (cdr (children (car (cdr x5)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x5))))))
   (children (car (cdr x5))))))
(assert (not (= (children (car (cdr (children (car (cdr x5)))))) (cdr x5))))
(assert (not (= (children (car (cdr (children (car (cdr x5)))))) x5)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr x5)))))))
   (car (cdr (children (car (cdr x5))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr x5))))))) (car (cdr x5)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x5)))))))
   (children (car (cdr (children (car (cdr x5)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x5)))))))
   (cdr (children (car (cdr x5)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x5)))))))
   (children (car (cdr x5))))))
(assert
 (not (= (cdr (children (car (cdr (children (car (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (children (car (cdr (children (car (cdr x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr x5)))))))
   (data (car (cdr (children (car (cdr x5)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x5))))) (cdr (children (car (cdr x5)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x5))))) (children (car (cdr x5))))))
(assert (not (= (cdr (cdr (children (car (cdr x5))))) (cdr x5))))
(assert (not (= (cdr (cdr (children (car (cdr x5))))) x5)))
(assert (not (= (car (cdr (cdr (children (car (cdr x5)))))) (car (cdr x5)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x5)))))))
   (cdr (cdr (children (car (cdr x5))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x5)))))))
   (cdr (children (car (cdr x5)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x5)))))))
   (children (car (cdr x5))))))
(assert
 (not (= (children (car (cdr (cdr (children (car (cdr x5))))))) (cdr x5))))
(assert (not (= (children (car (cdr (cdr (children (car (cdr x5))))))) x5)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x5))))))
   (cdr (cdr (children (car (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x5))))))
   (cdr (children (car (cdr x5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x5)))))) (children (car (cdr x5))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x5)))))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x5)))))) x5)))
(assert
 (not (= (car (cdr (cdr (cdr (children (car (cdr x5))))))) (car (cdr x5)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x5)))))))
   (cdr (cdr (cdr (children (car (cdr x5)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x5)))))))
   (cdr (cdr (children (car (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x5)))))))
   (cdr (children (car (cdr x5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x5)))))))
   (children (car (cdr x5))))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr x5))))))) x5)))
(assert (not (= (pred (data (car (cdr x5)))) (data (car (cdr x5))))))
(assert
 (not (= (pred (pred (data (car (cdr x5))))) (pred (data (car (cdr x5)))))))
(assert (not (= (pred (pred (data (car (cdr x5))))) (data (car (cdr x5))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x5))))))
   (pred (pred (data (car (cdr x5))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x5)))))) (pred (data (car (cdr x5)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x5)))))) (data (car (cdr x5))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x5)))))))
   (pred (pred (pred (data (car (cdr x5)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x5)))))))
   (pred (pred (data (car (cdr x5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x5)))))))
   (pred (data (car (cdr x5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x5))))))) (data (car (cdr x5))))))
(assert (not (= (cdr (cdr x5)) (cdr x5))))
(assert (not (= (cdr (cdr x5)) x5)))
(assert (not (= (children (car (cdr (cdr x5)))) (cdr (cdr x5)))))
(assert (not (= (children (car (cdr (cdr x5)))) (cdr x5))))
(assert (not (= (children (car (cdr (cdr x5)))) x5)))
(assert (not (= (car (children (car (cdr (cdr x5))))) (car (cdr (cdr x5))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x5))))))
   (children (car (cdr (cdr x5)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x5)))))) (cdr (cdr x5)))))
(assert (not (= (children (car (children (car (cdr (cdr x5)))))) (cdr x5))))
(assert (not (= (children (car (children (car (cdr (cdr x5)))))) x5)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr x5)))))))
   (car (children (car (cdr (cdr x5))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr x5)))))))
   (car (cdr (cdr x5))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x5)))))))
   (children (car (children (car (cdr (cdr x5)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x5)))))))
   (children (car (cdr (cdr x5)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert
 (not (= (cdr (children (car (children (car (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (children (car (children (car (cdr (cdr x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr x5)))))))
   (data (car (children (car (cdr (cdr x5)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x5))))) (children (car (cdr (cdr x5)))))))
(assert (not (= (cdr (children (car (cdr (cdr x5))))) (cdr (cdr x5)))))
(assert (not (= (cdr (children (car (cdr (cdr x5))))) (cdr x5))))
(assert (not (= (cdr (children (car (cdr (cdr x5))))) x5)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x5)))))) (car (cdr (cdr x5))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x5)))))))
   (cdr (children (car (cdr (cdr x5))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x5)))))))
   (children (car (cdr (cdr x5)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert
 (not (= (children (car (cdr (children (car (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (children (car (cdr (children (car (cdr (cdr x5))))))) x5)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x5))))))
   (cdr (children (car (cdr (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x5))))))
   (children (car (cdr (cdr x5)))))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x5)))))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x5)))))) (cdr x5))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x5)))))) x5)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr x5))))))) (car (cdr (cdr x5))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x5)))))))
   (cdr (cdr (children (car (cdr (cdr x5)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x5)))))))
   (cdr (children (car (cdr (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x5)))))))
   (children (car (cdr (cdr x5)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr x5))))))) x5)))
(assert
 (not (= (pred (data (car (cdr (cdr x5))))) (data (car (cdr (cdr x5)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x5))))))
   (pred (data (car (cdr (cdr x5))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x5)))))) (data (car (cdr (cdr x5)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x5)))))))
   (pred (pred (data (car (cdr (cdr x5)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x5)))))))
   (pred (data (car (cdr (cdr x5))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x5)))))))
   (data (car (cdr (cdr x5)))))))
(assert (not (= (cdr (cdr (cdr x5))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (cdr x5))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr x5))) x5)))
(assert (not (= (children (car (cdr (cdr (cdr x5))))) (cdr (cdr (cdr x5))))))
(assert (not (= (children (car (cdr (cdr (cdr x5))))) (cdr (cdr x5)))))
(assert (not (= (children (car (cdr (cdr (cdr x5))))) (cdr x5))))
(assert (not (= (children (car (cdr (cdr (cdr x5))))) x5)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x5)))))) (car (cdr (cdr (cdr x5)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x5)))))))
   (children (car (cdr (cdr (cdr x5))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x5)))))))
   (cdr (cdr (cdr x5))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert
 (not (= (children (car (children (car (cdr (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (children (car (children (car (cdr (cdr (cdr x5))))))) x5)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x5))))))
   (children (car (cdr (cdr (cdr x5))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x5)))))) (cdr (cdr (cdr x5))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x5)))))) (cdr (cdr x5)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x5)))))) (cdr x5))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x5)))))) x5)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr x5)))))))
   (car (cdr (cdr (cdr x5)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x5)))))))
   (cdr (children (car (cdr (cdr (cdr x5)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x5)))))))
   (children (car (cdr (cdr (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x5))))))) (cdr (cdr (cdr x5))))))
(assert
 (not (= (cdr (cdr (children (car (cdr (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x5))))))
   (data (car (cdr (cdr (cdr x5))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr x5)))))))
   (pred (data (car (cdr (cdr (cdr x5)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr x5)))))))
   (data (car (cdr (cdr (cdr x5))))))))
(assert (not (= (cdr (cdr (cdr (cdr x5)))) (cdr (cdr (cdr x5))))))
(assert (not (= (cdr (cdr (cdr (cdr x5)))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (cdr (cdr x5)))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (cdr x5)))) x5)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr (cdr (cdr x5)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr (cdr x5))))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr x5)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x5)))))) (cdr x5))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x5)))))) x5)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr x5)))))))
   (car (cdr (cdr (cdr (cdr x5))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x5)))))))
   (children (car (cdr (cdr (cdr (cdr x5)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x5)))))))
   (cdr (cdr (cdr (cdr x5)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr (cdr x5))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr x5))))))) x5)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr x5)))))))
   (data (car (cdr (cdr (cdr (cdr x5)))))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x5))))) (cdr (cdr (cdr (cdr x5)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x5))))) (cdr (cdr (cdr x5))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x5))))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x5))))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x5))))) x5)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x5)))))))
   (cdr (cdr (cdr (cdr (cdr x5))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x5)))))))
   (cdr (cdr (cdr (cdr x5)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr (cdr x5))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr x5))))))) x5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr (cdr (cdr (cdr x5))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr (cdr (cdr x5)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr (cdr x5))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x5)))))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x5)))))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x5)))))) x5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr x5)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5)))))))
   (cdr (cdr (cdr (cdr (cdr x5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr (cdr (cdr x5)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr (cdr x5))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr (cdr x5)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5))))))) (cdr x5))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x5))))))) x5)))
(assert (not (= (children (car x4)) x4)))
(assert (not (= (car (children (car x4))) (car x4))))
(assert (not (= (children (car (children (car x4)))) (children (car x4)))))
(assert (not (= (children (car (children (car x4)))) x4)))
(assert
 (not
  (= (car (children (car (children (car x4))))) (car (children (car x4))))))
(assert (not (= (car (children (car (children (car x4))))) (car x4))))
(assert
 (not
  (= (children (car (children (car (children (car x4))))))
   (children (car (children (car x4)))))))
(assert
 (not
  (= (children (car (children (car (children (car x4))))))
   (children (car x4)))))
(assert (not (= (children (car (children (car (children (car x4)))))) x4)))
(assert
 (not
  (= (car (children (car (children (car (children (car x4)))))))
   (car (children (car (children (car x4))))))))
(assert
 (not
  (= (car (children (car (children (car (children (car x4)))))))
   (car (children (car x4))))))
(assert
 (not
  (= (car (children (car (children (car (children (car x4))))))) (car x4))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x4)))))))
   (children (car (children (car (children (car x4)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x4)))))))
   (children (car (children (car x4)))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car x4)))))))
   (children (car x4)))))
(assert
 (not (= (cdr (children (car (children (car (children (car x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (children (car (children (car x4)))))))
   (data (car (children (car (children (car x4)))))))))
(assert
 (not
  (= (cdr (children (car (children (car x4)))))
   (children (car (children (car x4)))))))
(assert
 (not (= (cdr (children (car (children (car x4))))) (children (car x4)))))
(assert (not (= (cdr (children (car (children (car x4))))) x4)))
(assert
 (not
  (= (car (cdr (children (car (children (car x4))))))
   (car (children (car x4))))))
(assert (not (= (car (cdr (children (car (children (car x4)))))) (car x4))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x4)))))))
   (cdr (children (car (children (car x4))))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x4)))))))
   (children (car (children (car x4)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car x4)))))))
   (children (car x4)))))
(assert
 (not (= (children (car (cdr (children (car (children (car x4))))))) x4)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x4))))))
   (cdr (children (car (children (car x4))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x4))))))
   (children (car (children (car x4)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x4)))))) (children (car x4)))))
(assert (not (= (cdr (cdr (children (car (children (car x4)))))) x4)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car x4)))))))
   (car (children (car x4))))))
(assert
 (not (= (car (cdr (cdr (children (car (children (car x4))))))) (car x4))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x4)))))))
   (cdr (cdr (children (car (children (car x4)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x4)))))))
   (cdr (children (car (children (car x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x4)))))))
   (children (car (children (car x4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car x4)))))))
   (children (car x4)))))
(assert (not (= (cdr (cdr (cdr (children (car (children (car x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (children (car x4))))) (data (car (children (car x4)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x4))))))
   (pred (data (car (children (car x4))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x4))))))
   (data (car (children (car x4)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x4)))))))
   (pred (pred (data (car (children (car x4)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x4)))))))
   (pred (data (car (children (car x4))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car x4)))))))
   (data (car (children (car x4)))))))
(assert (not (= (cdr (children (car x4))) (children (car x4)))))
(assert (not (= (cdr (children (car x4))) x4)))
(assert (not (= (car (cdr (children (car x4)))) (car x4))))
(assert
 (not
  (= (children (car (cdr (children (car x4))))) (cdr (children (car x4))))))
(assert
 (not (= (children (car (cdr (children (car x4))))) (children (car x4)))))
(assert (not (= (children (car (cdr (children (car x4))))) x4)))
(assert
 (not
  (= (car (children (car (cdr (children (car x4))))))
   (car (cdr (children (car x4)))))))
(assert (not (= (car (children (car (cdr (children (car x4)))))) (car x4))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x4)))))))
   (children (car (cdr (children (car x4))))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x4)))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car x4)))))))
   (children (car x4)))))
(assert
 (not (= (children (car (children (car (cdr (children (car x4))))))) x4)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x4))))))
   (children (car (cdr (children (car x4))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x4))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x4)))))) (children (car x4)))))
(assert (not (= (cdr (children (car (cdr (children (car x4)))))) x4)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car x4)))))))
   (car (cdr (children (car x4)))))))
(assert
 (not (= (car (cdr (children (car (cdr (children (car x4))))))) (car x4))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x4)))))))
   (cdr (children (car (cdr (children (car x4)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x4)))))))
   (children (car (cdr (children (car x4))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x4)))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car x4)))))))
   (children (car x4)))))
(assert (not (= (cdr (cdr (children (car (cdr (children (car x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x4))))))
   (data (car (cdr (children (car x4))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car x4)))))))
   (pred (data (car (cdr (children (car x4)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car x4)))))))
   (data (car (cdr (children (car x4))))))))
(assert (not (= (cdr (cdr (children (car x4)))) (cdr (children (car x4))))))
(assert (not (= (cdr (cdr (children (car x4)))) (children (car x4)))))
(assert (not (= (cdr (cdr (children (car x4)))) x4)))
(assert (not (= (car (cdr (cdr (children (car x4))))) (car x4))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x4))))))
   (cdr (cdr (children (car x4)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x4))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x4)))))) (children (car x4)))))
(assert (not (= (children (car (cdr (cdr (children (car x4)))))) x4)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car x4)))))))
   (car (cdr (cdr (children (car x4))))))))
(assert
 (not (= (car (children (car (cdr (cdr (children (car x4))))))) (car x4))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x4)))))))
   (children (car (cdr (cdr (children (car x4)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x4)))))))
   (cdr (cdr (children (car x4)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x4)))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car x4)))))))
   (children (car x4)))))
(assert (not (= (cdr (children (car (cdr (cdr (children (car x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car x4)))))))
   (data (car (cdr (cdr (children (car x4)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x4))))) (cdr (cdr (children (car x4)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x4))))) (cdr (children (car x4))))))
(assert (not (= (cdr (cdr (cdr (children (car x4))))) (children (car x4)))))
(assert (not (= (cdr (cdr (cdr (children (car x4))))) x4)))
(assert (not (= (car (cdr (cdr (cdr (children (car x4)))))) (car x4))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x4)))))))
   (cdr (cdr (cdr (children (car x4))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x4)))))))
   (cdr (cdr (children (car x4)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x4)))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car x4)))))))
   (children (car x4)))))
(assert (not (= (children (car (cdr (cdr (cdr (children (car x4))))))) x4)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x4))))))
   (cdr (cdr (cdr (children (car x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x4))))))
   (cdr (cdr (children (car x4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x4)))))) (cdr (children (car x4))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x4)))))) (children (car x4)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x4)))))) x4)))
(assert (not (= (car (cdr (cdr (cdr (cdr (children (car x4))))))) (car x4))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x4)))))))
   (cdr (cdr (cdr (cdr (children (car x4)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x4)))))))
   (cdr (cdr (cdr (children (car x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x4)))))))
   (cdr (cdr (children (car x4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x4)))))))
   (cdr (children (car x4))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car x4))))))) (children (car x4)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children (car x4))))))) x4)))
(assert (not (= (pred (data (car x4))) (data (car x4)))))
(assert (not (= (pred (pred (data (car x4)))) (pred (data (car x4))))))
(assert (not (= (pred (pred (data (car x4)))) (data (car x4)))))
(assert
 (not (= (pred (pred (pred (data (car x4))))) (pred (pred (data (car x4)))))))
(assert (not (= (pred (pred (pred (data (car x4))))) (pred (data (car x4))))))
(assert (not (= (pred (pred (pred (data (car x4))))) (data (car x4)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x4))))))
   (pred (pred (pred (data (car x4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x4))))))
   (pred (pred (data (car x4)))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x4)))))) (pred (data (car x4))))))
(assert (not (= (pred (pred (pred (pred (data (car x4)))))) (data (car x4)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x4)))))))
   (pred (pred (pred (pred (data (car x4)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x4)))))))
   (pred (pred (pred (data (car x4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x4)))))))
   (pred (pred (data (car x4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car x4)))))))
   (pred (data (car x4))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data (car x4))))))) (data (car x4)))))
(assert (not (= (cdr x4) x4)))
(assert (not (= (children (car (cdr x4))) (cdr x4))))
(assert (not (= (children (car (cdr x4))) x4)))
(assert (not (= (car (children (car (cdr x4)))) (car (cdr x4)))))
(assert
 (not
  (= (children (car (children (car (cdr x4))))) (children (car (cdr x4))))))
(assert (not (= (children (car (children (car (cdr x4))))) (cdr x4))))
(assert (not (= (children (car (children (car (cdr x4))))) x4)))
(assert
 (not
  (= (car (children (car (children (car (cdr x4))))))
   (car (children (car (cdr x4)))))))
(assert
 (not (= (car (children (car (children (car (cdr x4)))))) (car (cdr x4)))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x4)))))))
   (children (car (children (car (cdr x4))))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x4)))))))
   (children (car (cdr x4))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr x4))))))) (cdr x4))))
(assert
 (not (= (children (car (children (car (children (car (cdr x4))))))) x4)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x4))))))
   (children (car (children (car (cdr x4))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x4))))))
   (children (car (cdr x4))))))
(assert (not (= (cdr (children (car (children (car (cdr x4)))))) (cdr x4))))
(assert (not (= (cdr (children (car (children (car (cdr x4)))))) x4)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr x4)))))))
   (car (children (car (cdr x4)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr x4))))))) (car (cdr x4)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x4)))))))
   (cdr (children (car (children (car (cdr x4)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x4)))))))
   (children (car (children (car (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr x4)))))))
   (children (car (cdr x4))))))
(assert
 (not (= (cdr (cdr (children (car (children (car (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (cdr (children (car (children (car (cdr x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x4))))))
   (data (car (children (car (cdr x4))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr x4)))))))
   (pred (data (car (children (car (cdr x4)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr x4)))))))
   (data (car (children (car (cdr x4))))))))
(assert (not (= (cdr (children (car (cdr x4)))) (children (car (cdr x4))))))
(assert (not (= (cdr (children (car (cdr x4)))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr x4)))) x4)))
(assert (not (= (car (cdr (children (car (cdr x4))))) (car (cdr x4)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x4))))))
   (cdr (children (car (cdr x4)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x4))))))
   (children (car (cdr x4))))))
(assert (not (= (children (car (cdr (children (car (cdr x4)))))) (cdr x4))))
(assert (not (= (children (car (cdr (children (car (cdr x4)))))) x4)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr x4)))))))
   (car (cdr (children (car (cdr x4))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr x4))))))) (car (cdr x4)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x4)))))))
   (children (car (cdr (children (car (cdr x4)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x4)))))))
   (cdr (children (car (cdr x4)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr x4)))))))
   (children (car (cdr x4))))))
(assert
 (not (= (cdr (children (car (cdr (children (car (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr (children (car (cdr x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr x4)))))))
   (data (car (cdr (children (car (cdr x4)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x4))))) (cdr (children (car (cdr x4)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x4))))) (children (car (cdr x4))))))
(assert (not (= (cdr (cdr (children (car (cdr x4))))) (cdr x4))))
(assert (not (= (cdr (cdr (children (car (cdr x4))))) x4)))
(assert (not (= (car (cdr (cdr (children (car (cdr x4)))))) (car (cdr x4)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x4)))))))
   (cdr (cdr (children (car (cdr x4))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x4)))))))
   (cdr (children (car (cdr x4)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr x4)))))))
   (children (car (cdr x4))))))
(assert
 (not (= (children (car (cdr (cdr (children (car (cdr x4))))))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr (children (car (cdr x4))))))) x4)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x4))))))
   (cdr (cdr (children (car (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x4))))))
   (cdr (children (car (cdr x4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x4)))))) (children (car (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x4)))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x4)))))) x4)))
(assert
 (not (= (car (cdr (cdr (cdr (children (car (cdr x4))))))) (car (cdr x4)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x4)))))))
   (cdr (cdr (cdr (children (car (cdr x4)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x4)))))))
   (cdr (cdr (children (car (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x4)))))))
   (cdr (children (car (cdr x4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr x4)))))))
   (children (car (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr x4))))))) x4)))
(assert (not (= (pred (data (car (cdr x4)))) (data (car (cdr x4))))))
(assert
 (not (= (pred (pred (data (car (cdr x4))))) (pred (data (car (cdr x4)))))))
(assert (not (= (pred (pred (data (car (cdr x4))))) (data (car (cdr x4))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x4))))))
   (pred (pred (data (car (cdr x4))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x4)))))) (pred (data (car (cdr x4)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x4)))))) (data (car (cdr x4))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x4)))))))
   (pred (pred (pred (data (car (cdr x4)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x4)))))))
   (pred (pred (data (car (cdr x4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x4)))))))
   (pred (data (car (cdr x4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr x4))))))) (data (car (cdr x4))))))
(assert (not (= (cdr (cdr x4)) (cdr x4))))
(assert (not (= (cdr (cdr x4)) x4)))
(assert (not (= (children (car (cdr (cdr x4)))) (cdr (cdr x4)))))
(assert (not (= (children (car (cdr (cdr x4)))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr x4)))) x4)))
(assert (not (= (car (children (car (cdr (cdr x4))))) (car (cdr (cdr x4))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x4))))))
   (children (car (cdr (cdr x4)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x4)))))) (cdr (cdr x4)))))
(assert (not (= (children (car (children (car (cdr (cdr x4)))))) (cdr x4))))
(assert (not (= (children (car (children (car (cdr (cdr x4)))))) x4)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr x4)))))))
   (car (children (car (cdr (cdr x4))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr x4)))))))
   (car (cdr (cdr x4))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x4)))))))
   (children (car (children (car (cdr (cdr x4)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x4)))))))
   (children (car (cdr (cdr x4)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert
 (not (= (cdr (children (car (children (car (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (children (car (children (car (cdr (cdr x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr x4)))))))
   (data (car (children (car (cdr (cdr x4)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x4))))) (children (car (cdr (cdr x4)))))))
(assert (not (= (cdr (children (car (cdr (cdr x4))))) (cdr (cdr x4)))))
(assert (not (= (cdr (children (car (cdr (cdr x4))))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr (cdr x4))))) x4)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x4)))))) (car (cdr (cdr x4))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x4)))))))
   (cdr (children (car (cdr (cdr x4))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x4)))))))
   (children (car (cdr (cdr x4)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert
 (not (= (children (car (cdr (children (car (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (children (car (cdr (children (car (cdr (cdr x4))))))) x4)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x4))))))
   (cdr (children (car (cdr (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x4))))))
   (children (car (cdr (cdr x4)))))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x4)))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x4)))))) (cdr x4))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x4)))))) x4)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr x4))))))) (car (cdr (cdr x4))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x4)))))))
   (cdr (cdr (children (car (cdr (cdr x4)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x4)))))))
   (cdr (children (car (cdr (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr x4)))))))
   (children (car (cdr (cdr x4)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr x4))))))) x4)))
(assert
 (not (= (pred (data (car (cdr (cdr x4))))) (data (car (cdr (cdr x4)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x4))))))
   (pred (data (car (cdr (cdr x4))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x4)))))) (data (car (cdr (cdr x4)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x4)))))))
   (pred (pred (data (car (cdr (cdr x4)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x4)))))))
   (pred (data (car (cdr (cdr x4))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr x4)))))))
   (data (car (cdr (cdr x4)))))))
(assert (not (= (cdr (cdr (cdr x4))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr x4))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr x4))) x4)))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) (cdr (cdr (cdr x4))))))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) (cdr (cdr x4)))))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) x4)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x4)))))) (car (cdr (cdr (cdr x4)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x4)))))))
   (children (car (cdr (cdr (cdr x4))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x4)))))))
   (cdr (cdr (cdr x4))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert
 (not (= (children (car (children (car (cdr (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (children (car (children (car (cdr (cdr (cdr x4))))))) x4)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x4))))))
   (children (car (cdr (cdr (cdr x4))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x4)))))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x4)))))) (cdr (cdr x4)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x4)))))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x4)))))) x4)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr x4)))))))
   (car (cdr (cdr (cdr x4)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x4)))))))
   (cdr (children (car (cdr (cdr (cdr x4)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x4)))))))
   (children (car (cdr (cdr (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr x4))))))) (cdr (cdr (cdr x4))))))
(assert
 (not (= (cdr (cdr (children (car (cdr (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x4))))))
   (data (car (cdr (cdr (cdr x4))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr x4)))))))
   (pred (data (car (cdr (cdr (cdr x4)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr x4)))))))
   (data (car (cdr (cdr (cdr x4))))))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) x4)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr (cdr (cdr x4)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr (cdr x4))))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr x4)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x4)))))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x4)))))) x4)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr x4)))))))
   (car (cdr (cdr (cdr (cdr x4))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x4)))))))
   (children (car (cdr (cdr (cdr (cdr x4)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x4)))))))
   (cdr (cdr (cdr (cdr x4)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr (cdr x4))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr x4))))))) x4)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr x4)))))))
   (data (car (cdr (cdr (cdr (cdr x4)))))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr (cdr (cdr (cdr x4)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) x4)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x4)))))))
   (cdr (cdr (cdr (cdr (cdr x4))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x4)))))))
   (cdr (cdr (cdr (cdr x4)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr (cdr x4))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr x4))))))) x4)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr (cdr (cdr (cdr x4))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr (cdr (cdr x4)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x4)))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x4)))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x4)))))) x4)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr x4)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4)))))))
   (cdr (cdr (cdr (cdr (cdr x4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr (cdr (cdr x4)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4))))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr x4))))))) x4)))
(assert (not (= (children (car null)) null)))
(assert (not (= (car (children (car null))) (car null))))
(assert
 (not (= (children (car (children (car null)))) (children (car null)))))
(assert (not (= (children (car (children (car null)))) null)))
(assert
 (not
  (= (car (children (car (children (car null))))) (car (children (car null))))))
(assert (not (= (car (children (car (children (car null))))) (car null))))
(assert
 (not
  (= (children (car (children (car (children (car null))))))
   (children (car (children (car null)))))))
(assert
 (not
  (= (children (car (children (car (children (car null))))))
   (children (car null)))))
(assert
 (not (= (children (car (children (car (children (car null)))))) null)))
(assert
 (not
  (= (car (children (car (children (car (children (car null)))))))
   (car (children (car (children (car null))))))))
(assert
 (not
  (= (car (children (car (children (car (children (car null)))))))
   (car (children (car null))))))
(assert
 (not
  (= (car (children (car (children (car (children (car null))))))) (car null))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car null)))))))
   (children (car (children (car (children (car null)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car null)))))))
   (children (car (children (car null)))))))
(assert
 (not
  (= (cdr (children (car (children (car (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (cdr (children (car (children (car (children (car null))))))) null)))
(assert
 (not
  (= (pred (data (car (children (car (children (car null)))))))
   (data (car (children (car (children (car null)))))))))
(assert
 (not
  (= (cdr (children (car (children (car null)))))
   (children (car (children (car null)))))))
(assert
 (not (= (cdr (children (car (children (car null))))) (children (car null)))))
(assert (not (= (cdr (children (car (children (car null))))) null)))
(assert
 (not
  (= (car (cdr (children (car (children (car null))))))
   (car (children (car null))))))
(assert
 (not (= (car (cdr (children (car (children (car null)))))) (car null))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car null)))))))
   (cdr (children (car (children (car null))))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car null)))))))
   (children (car (children (car null)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (children (car (cdr (children (car (children (car null))))))) null)))
(assert
 (not
  (= (cdr (cdr (children (car (children (car null))))))
   (cdr (children (car (children (car null))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car null))))))
   (children (car (children (car null)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car null)))))) (children (car null)))))
(assert (not (= (cdr (cdr (children (car (children (car null)))))) null)))
(assert
 (not
  (= (car (cdr (cdr (children (car (children (car null)))))))
   (car (children (car null))))))
(assert
 (not (= (car (cdr (cdr (children (car (children (car null))))))) (car null))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car null)))))))
   (cdr (cdr (children (car (children (car null)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car null)))))))
   (cdr (children (car (children (car null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car null)))))))
   (children (car (children (car null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (cdr (cdr (cdr (children (car (children (car null))))))) null)))
(assert
 (not
  (= (pred (data (car (children (car null)))))
   (data (car (children (car null)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car null))))))
   (pred (data (car (children (car null))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car null))))))
   (data (car (children (car null)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car null)))))))
   (pred (pred (data (car (children (car null)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car null)))))))
   (pred (data (car (children (car null))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children (car null)))))))
   (data (car (children (car null)))))))
(assert (not (= (cdr (children (car null))) (children (car null)))))
(assert (not (= (cdr (children (car null))) null)))
(assert (not (= (car (cdr (children (car null)))) (car null))))
(assert
 (not
  (= (children (car (cdr (children (car null))))) (cdr (children (car null))))))
(assert
 (not (= (children (car (cdr (children (car null))))) (children (car null)))))
(assert (not (= (children (car (cdr (children (car null))))) null)))
(assert
 (not
  (= (car (children (car (cdr (children (car null))))))
   (car (cdr (children (car null)))))))
(assert
 (not (= (car (children (car (cdr (children (car null)))))) (car null))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car null)))))))
   (children (car (cdr (children (car null))))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car null)))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (children (car (children (car (cdr (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (children (car (children (car (cdr (children (car null))))))) null)))
(assert
 (not
  (= (cdr (children (car (cdr (children (car null))))))
   (children (car (cdr (children (car null))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car null))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car null)))))) (children (car null)))))
(assert (not (= (cdr (children (car (cdr (children (car null)))))) null)))
(assert
 (not
  (= (car (cdr (children (car (cdr (children (car null)))))))
   (car (cdr (children (car null)))))))
(assert
 (not (= (car (cdr (children (car (cdr (children (car null))))))) (car null))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car null)))))))
   (cdr (children (car (cdr (children (car null)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car null)))))))
   (children (car (cdr (children (car null))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car null)))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (cdr (cdr (children (car (cdr (children (car null))))))) null)))
(assert
 (not
  (= (pred (data (car (cdr (children (car null))))))
   (data (car (cdr (children (car null))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car null)))))))
   (pred (data (car (cdr (children (car null)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children (car null)))))))
   (data (car (cdr (children (car null))))))))
(assert
 (not (= (cdr (cdr (children (car null)))) (cdr (children (car null))))))
(assert (not (= (cdr (cdr (children (car null)))) (children (car null)))))
(assert (not (= (cdr (cdr (children (car null)))) null)))
(assert (not (= (car (cdr (cdr (children (car null))))) (car null))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car null))))))
   (cdr (cdr (children (car null)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car null))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car null)))))) (children (car null)))))
(assert (not (= (children (car (cdr (cdr (children (car null)))))) null)))
(assert
 (not
  (= (car (children (car (cdr (cdr (children (car null)))))))
   (car (cdr (cdr (children (car null))))))))
(assert
 (not (= (car (children (car (cdr (cdr (children (car null))))))) (car null))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car null)))))))
   (children (car (cdr (cdr (children (car null)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car null)))))))
   (cdr (cdr (children (car null)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car null)))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (cdr (children (car (cdr (cdr (children (car null))))))) null)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children (car null)))))))
   (data (car (cdr (cdr (children (car null)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car null)))))
   (cdr (cdr (children (car null)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car null))))) (cdr (children (car null))))))
(assert
 (not (= (cdr (cdr (cdr (children (car null))))) (children (car null)))))
(assert (not (= (cdr (cdr (cdr (children (car null))))) null)))
(assert (not (= (car (cdr (cdr (cdr (children (car null)))))) (car null))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car null)))))))
   (cdr (cdr (cdr (children (car null))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car null)))))))
   (cdr (cdr (children (car null)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car null)))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children (car null)))))))
   (children (car null)))))
(assert
 (not (= (children (car (cdr (cdr (cdr (children (car null))))))) null)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car null))))))
   (cdr (cdr (cdr (children (car null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car null))))))
   (cdr (cdr (children (car null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car null))))))
   (cdr (children (car null))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car null)))))) (children (car null)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car null)))))) null)))
(assert
 (not (= (car (cdr (cdr (cdr (cdr (children (car null))))))) (car null))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car null)))))))
   (cdr (cdr (cdr (cdr (children (car null)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car null)))))))
   (cdr (cdr (cdr (children (car null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car null)))))))
   (cdr (cdr (children (car null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car null)))))))
   (cdr (children (car null))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children (car null)))))))
   (children (car null)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children (car null))))))) null)))
(assert (not (= (pred (data (car null))) (data (car null)))))
(assert (not (= (pred (pred (data (car null)))) (pred (data (car null))))))
(assert (not (= (pred (pred (data (car null)))) (data (car null)))))
(assert
 (not
  (= (pred (pred (pred (data (car null))))) (pred (pred (data (car null)))))))
(assert
 (not (= (pred (pred (pred (data (car null))))) (pred (data (car null))))))
(assert (not (= (pred (pred (pred (data (car null))))) (data (car null)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car null))))))
   (pred (pred (pred (data (car null))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car null))))))
   (pred (pred (data (car null)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car null)))))) (pred (data (car null))))))
(assert
 (not (= (pred (pred (pred (pred (data (car null)))))) (data (car null)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car null)))))))
   (pred (pred (pred (pred (data (car null)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car null)))))))
   (pred (pred (pred (data (car null))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car null)))))))
   (pred (pred (data (car null)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car null)))))))
   (pred (data (car null))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data (car null))))))) (data (car null)))))
(assert (not (= (cdr null) null)))
(assert (not (= (children (car (cdr null))) (cdr null))))
(assert (not (= (children (car (cdr null))) null)))
(assert (not (= (car (children (car (cdr null)))) (car (cdr null)))))
(assert
 (not
  (= (children (car (children (car (cdr null))))) (children (car (cdr null))))))
(assert (not (= (children (car (children (car (cdr null))))) (cdr null))))
(assert (not (= (children (car (children (car (cdr null))))) null)))
(assert
 (not
  (= (car (children (car (children (car (cdr null))))))
   (car (children (car (cdr null)))))))
(assert
 (not (= (car (children (car (children (car (cdr null)))))) (car (cdr null)))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr null)))))))
   (children (car (children (car (cdr null))))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr null)))))))
   (children (car (cdr null))))))
(assert
 (not
  (= (children (car (children (car (children (car (cdr null))))))) (cdr null))))
(assert
 (not (= (children (car (children (car (children (car (cdr null))))))) null)))
(assert
 (not
  (= (cdr (children (car (children (car (cdr null))))))
   (children (car (children (car (cdr null))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr null))))))
   (children (car (cdr null))))))
(assert
 (not (= (cdr (children (car (children (car (cdr null)))))) (cdr null))))
(assert (not (= (cdr (children (car (children (car (cdr null)))))) null)))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr null)))))))
   (car (children (car (cdr null)))))))
(assert
 (not
  (= (car (cdr (children (car (children (car (cdr null)))))))
   (car (cdr null)))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr null)))))))
   (cdr (children (car (children (car (cdr null)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr null)))))))
   (children (car (children (car (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car (cdr null)))))))
   (children (car (cdr null))))))
(assert
 (not (= (cdr (cdr (children (car (children (car (cdr null))))))) (cdr null))))
(assert
 (not (= (cdr (cdr (children (car (children (car (cdr null))))))) null)))
(assert
 (not
  (= (pred (data (car (children (car (cdr null))))))
   (data (car (children (car (cdr null))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr null)))))))
   (pred (data (car (children (car (cdr null)))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car (cdr null)))))))
   (data (car (children (car (cdr null))))))))
(assert
 (not (= (cdr (children (car (cdr null)))) (children (car (cdr null))))))
(assert (not (= (cdr (children (car (cdr null)))) (cdr null))))
(assert (not (= (cdr (children (car (cdr null)))) null)))
(assert (not (= (car (cdr (children (car (cdr null))))) (car (cdr null)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr null))))))
   (cdr (children (car (cdr null)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr null))))))
   (children (car (cdr null))))))
(assert
 (not (= (children (car (cdr (children (car (cdr null)))))) (cdr null))))
(assert (not (= (children (car (cdr (children (car (cdr null)))))) null)))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr null)))))))
   (car (cdr (children (car (cdr null))))))))
(assert
 (not
  (= (car (children (car (cdr (children (car (cdr null)))))))
   (car (cdr null)))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr null)))))))
   (children (car (cdr (children (car (cdr null)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr null)))))))
   (cdr (children (car (cdr null)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car (cdr null)))))))
   (children (car (cdr null))))))
(assert
 (not (= (cdr (children (car (cdr (children (car (cdr null))))))) (cdr null))))
(assert
 (not (= (cdr (children (car (cdr (children (car (cdr null))))))) null)))
(assert
 (not
  (= (pred (data (car (cdr (children (car (cdr null)))))))
   (data (car (cdr (children (car (cdr null)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr null)))))
   (cdr (children (car (cdr null)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr null))))) (children (car (cdr null))))))
(assert (not (= (cdr (cdr (children (car (cdr null))))) (cdr null))))
(assert (not (= (cdr (cdr (children (car (cdr null))))) null)))
(assert
 (not (= (car (cdr (cdr (children (car (cdr null)))))) (car (cdr null)))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr null)))))))
   (cdr (cdr (children (car (cdr null))))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr null)))))))
   (cdr (children (car (cdr null)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car (cdr null)))))))
   (children (car (cdr null))))))
(assert
 (not (= (children (car (cdr (cdr (children (car (cdr null))))))) (cdr null))))
(assert
 (not (= (children (car (cdr (cdr (children (car (cdr null))))))) null)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr null))))))
   (cdr (cdr (children (car (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr null))))))
   (cdr (children (car (cdr null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr null))))))
   (children (car (cdr null))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr null)))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr null)))))) null)))
(assert
 (not
  (= (car (cdr (cdr (cdr (children (car (cdr null))))))) (car (cdr null)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr null)))))))
   (cdr (cdr (cdr (children (car (cdr null)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr null)))))))
   (cdr (cdr (children (car (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr null)))))))
   (cdr (children (car (cdr null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car (cdr null)))))))
   (children (car (cdr null))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car (cdr null))))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car (cdr null))))))) null)))
(assert (not (= (pred (data (car (cdr null)))) (data (car (cdr null))))))
(assert
 (not
  (= (pred (pred (data (car (cdr null))))) (pred (data (car (cdr null)))))))
(assert
 (not (= (pred (pred (data (car (cdr null))))) (data (car (cdr null))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr null))))))
   (pred (pred (data (car (cdr null))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr null))))))
   (pred (data (car (cdr null)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr null)))))) (data (car (cdr null))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr null)))))))
   (pred (pred (pred (data (car (cdr null)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr null)))))))
   (pred (pred (data (car (cdr null))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr null)))))))
   (pred (data (car (cdr null)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car (cdr null)))))))
   (data (car (cdr null))))))
(assert (not (= (cdr (cdr null)) (cdr null))))
(assert (not (= (cdr (cdr null)) null)))
(assert (not (= (children (car (cdr (cdr null)))) (cdr (cdr null)))))
(assert (not (= (children (car (cdr (cdr null)))) (cdr null))))
(assert (not (= (children (car (cdr (cdr null)))) null)))
(assert
 (not (= (car (children (car (cdr (cdr null))))) (car (cdr (cdr null))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr null))))))
   (children (car (cdr (cdr null)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr null)))))) (cdr (cdr null)))))
(assert
 (not (= (children (car (children (car (cdr (cdr null)))))) (cdr null))))
(assert (not (= (children (car (children (car (cdr (cdr null)))))) null)))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr null)))))))
   (car (children (car (cdr (cdr null))))))))
(assert
 (not
  (= (car (children (car (children (car (cdr (cdr null)))))))
   (car (cdr (cdr null))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr null)))))))
   (children (car (children (car (cdr (cdr null)))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr null)))))))
   (children (car (cdr (cdr null)))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr (cdr null)))))))
   (cdr (cdr null)))))
(assert
 (not (= (cdr (children (car (children (car (cdr (cdr null))))))) (cdr null))))
(assert
 (not (= (cdr (children (car (children (car (cdr (cdr null))))))) null)))
(assert
 (not
  (= (pred (data (car (children (car (cdr (cdr null)))))))
   (data (car (children (car (cdr (cdr null)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr null)))))
   (children (car (cdr (cdr null)))))))
(assert (not (= (cdr (children (car (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (cdr (children (car (cdr (cdr null))))) (cdr null))))
(assert (not (= (cdr (children (car (cdr (cdr null))))) null)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr null)))))) (car (cdr (cdr null))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr null)))))))
   (cdr (children (car (cdr (cdr null))))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr null)))))))
   (children (car (cdr (cdr null)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr (cdr null)))))))
   (cdr (cdr null)))))
(assert
 (not (= (children (car (cdr (children (car (cdr (cdr null))))))) (cdr null))))
(assert
 (not (= (children (car (cdr (children (car (cdr (cdr null))))))) null)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr null))))))
   (cdr (children (car (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr null))))))
   (children (car (cdr (cdr null)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr (cdr null)))))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr null)))))) (cdr null))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr null)))))) null)))
(assert
 (not
  (= (car (cdr (cdr (children (car (cdr (cdr null)))))))
   (car (cdr (cdr null))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr null)))))))
   (cdr (cdr (children (car (cdr (cdr null)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr null)))))))
   (cdr (children (car (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr null)))))))
   (children (car (cdr (cdr null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr (cdr null))))))) (cdr (cdr null)))))
(assert
 (not (= (cdr (cdr (cdr (children (car (cdr (cdr null))))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr (cdr null))))))) null)))
(assert
 (not (= (pred (data (car (cdr (cdr null))))) (data (car (cdr (cdr null)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr null))))))
   (pred (data (car (cdr (cdr null))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr null))))))
   (data (car (cdr (cdr null)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr null)))))))
   (pred (pred (data (car (cdr (cdr null)))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr null)))))))
   (pred (data (car (cdr (cdr null))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr (cdr null)))))))
   (data (car (cdr (cdr null)))))))
(assert (not (= (cdr (cdr (cdr null))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr null))) (cdr null))))
(assert (not (= (cdr (cdr (cdr null))) null)))
(assert
 (not (= (children (car (cdr (cdr (cdr null))))) (cdr (cdr (cdr null))))))
(assert (not (= (children (car (cdr (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (children (car (cdr (cdr (cdr null))))) (cdr null))))
(assert (not (= (children (car (cdr (cdr (cdr null))))) null)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr null))))))
   (car (cdr (cdr (cdr null)))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr null)))))))
   (children (car (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr null))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr (cdr null)))))))
   (cdr (cdr null)))))
(assert
 (not (= (children (car (children (car (cdr (cdr (cdr null))))))) (cdr null))))
(assert
 (not (= (children (car (children (car (cdr (cdr (cdr null))))))) null)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr null))))))
   (children (car (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr null)))))) (cdr (cdr (cdr null))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr null)))))) (cdr (cdr null)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr null)))))) (cdr null))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr null)))))) null)))
(assert
 (not
  (= (car (cdr (children (car (cdr (cdr (cdr null)))))))
   (car (cdr (cdr (cdr null)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr null)))))))
   (cdr (children (car (cdr (cdr (cdr null)))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr null)))))))
   (children (car (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr null))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr (cdr null))))))) (cdr (cdr null)))))
(assert
 (not (= (cdr (cdr (children (car (cdr (cdr (cdr null))))))) (cdr null))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr (cdr null))))))) null)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr null))))))
   (data (car (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr null)))))))
   (pred (data (car (cdr (cdr (cdr null)))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr (cdr null)))))))
   (data (car (cdr (cdr (cdr null))))))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) (cdr (cdr (cdr null))))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) null)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr null))))))
   (cdr (cdr (cdr (cdr null)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr null)))))) (cdr (cdr (cdr null))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr null)))))) (cdr (cdr null)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr null)))))) (cdr null))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr null)))))) null)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr (cdr null)))))))
   (car (cdr (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr null)))))))
   (children (car (cdr (cdr (cdr (cdr null)))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr (cdr null)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr null))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr (cdr null))))))) (cdr (cdr null)))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr (cdr null))))))) (cdr null))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr (cdr null))))))) null)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr (cdr null)))))))
   (data (car (cdr (cdr (cdr (cdr null)))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr (cdr (cdr null)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr (cdr null))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) null)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr (cdr null)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr null))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr (cdr null))))))) (cdr (cdr null)))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr (cdr null))))))) (cdr null))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr (cdr null))))))) null)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr null))))))
   (cdr (cdr (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr null)))))) (cdr (cdr (cdr (cdr null)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr null)))))) (cdr (cdr (cdr null))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr null)))))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr null)))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr null)))))) null)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr (cdr (cdr (cdr null)))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr (cdr (cdr null))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null)))))))
   (cdr (cdr (cdr (cdr null)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null))))))) (cdr (cdr (cdr null))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null))))))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null))))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr (cdr null))))))) null)))
(assert (not (= (car (children contrived_variable2)) contrived_variable2)))
(assert
 (not
  (= (children (car (children contrived_variable2)))
   (children contrived_variable2))))
(assert
 (not
  (= (car (children (car (children contrived_variable2))))
   (car (children contrived_variable2)))))
(assert
 (not
  (= (car (children (car (children contrived_variable2))))
   contrived_variable2)))
(assert
 (not
  (= (children (car (children (car (children contrived_variable2)))))
   (children (car (children contrived_variable2))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable2)))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable2))))))
   (car (children (car (children contrived_variable2)))))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable2))))))
   (car (children contrived_variable2)))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable2))))))
   contrived_variable2)))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable2))))))
   (children (car (children (car (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable2))))))
   (children (car (children contrived_variable2))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (pred (data (car (children (car (children contrived_variable2))))))
   (data (car (children (car (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable2))))
   (children (car (children contrived_variable2))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable2))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable2)))))
   (car (children contrived_variable2)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable2)))))
   contrived_variable2)))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable2))))))
   (cdr (children (car (children contrived_variable2)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable2))))))
   (children (car (children contrived_variable2))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable2)))))
   (cdr (children (car (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable2)))))
   (children (car (children contrived_variable2))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable2)))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable2))))))
   (car (children contrived_variable2)))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable2))))))
   contrived_variable2)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable2))))))
   (cdr (cdr (children (car (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable2))))))
   (cdr (children (car (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable2))))))
   (children (car (children contrived_variable2))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (pred (data (car (children contrived_variable2))))
   (data (car (children contrived_variable2))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable2)))))
   (pred (data (car (children contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable2)))))
   (data (car (children contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable2))))))
   (pred (pred (data (car (children contrived_variable2))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable2))))))
   (pred (data (car (children contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable2))))))
   (data (car (children contrived_variable2))))))
(assert
 (not (= (cdr (children contrived_variable2)) (children contrived_variable2))))
(assert
 (not (= (car (cdr (children contrived_variable2))) contrived_variable2)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable2))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable2))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable2)))))
   (car (cdr (children contrived_variable2))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable2)))))
   contrived_variable2)))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable2))))))
   (children (car (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable2))))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable2)))))
   (children (car (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable2)))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable2)))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable2))))))
   (car (cdr (children contrived_variable2))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable2))))))
   contrived_variable2)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable2))))))
   (cdr (children (car (cdr (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable2))))))
   (children (car (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable2))))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable2)))))
   (data (car (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable2))))))
   (pred (data (car (cdr (children contrived_variable2))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable2))))))
   (data (car (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable2)))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable2)))
   (children contrived_variable2))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable2)))) contrived_variable2)))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable2)))))
   (cdr (cdr (children contrived_variable2))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable2)))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable2)))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable2))))))
   (car (cdr (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable2))))))
   contrived_variable2)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable2))))))
   (children (car (cdr (cdr (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable2))))))
   (cdr (cdr (children contrived_variable2))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable2))))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children contrived_variable2))))))
   (data (car (cdr (cdr (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable2))))
   (cdr (cdr (children contrived_variable2))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable2))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable2))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable2)))))
   contrived_variable2)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (cdr (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (cdr (children contrived_variable2))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable2)))))
   (cdr (cdr (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable2)))))
   (cdr (cdr (children contrived_variable2))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable2)))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable2)))))
   (children contrived_variable2))))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children contrived_variable2))))))
   contrived_variable2)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (cdr (cdr (cdr (children contrived_variable2))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (cdr (cdr (children contrived_variable2)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (cdr (children contrived_variable2))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable2))))))
   (cdr (children contrived_variable2)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable2))))))
   (children contrived_variable2))))
(assert
 (not (= (pred (data contrived_variable2)) (data contrived_variable2))))
(assert
 (not
  (= (pred (pred (data contrived_variable2)))
   (pred (data contrived_variable2)))))
(assert
 (not (= (pred (pred (data contrived_variable2))) (data contrived_variable2))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable2))))
   (pred (pred (data contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable2))))
   (pred (data contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable2))))
   (data contrived_variable2))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable2)))))
   (pred (pred (pred (data contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable2)))))
   (pred (pred (data contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable2)))))
   (pred (data contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable2)))))
   (data contrived_variable2))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable2))))))
   (pred (pred (pred (pred (data contrived_variable2))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable2))))))
   (pred (pred (pred (data contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable2))))))
   (pred (pred (data contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable2))))))
   (pred (data contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable2))))))
   (data contrived_variable2))))
(assert (not (= (car (children contrived_variable5)) contrived_variable5)))
(assert
 (not
  (= (children (car (children contrived_variable5)))
   (children contrived_variable5))))
(assert
 (not
  (= (car (children (car (children contrived_variable5))))
   (car (children contrived_variable5)))))
(assert
 (not
  (= (car (children (car (children contrived_variable5))))
   contrived_variable5)))
(assert
 (not
  (= (children (car (children (car (children contrived_variable5)))))
   (children (car (children contrived_variable5))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable5)))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable5))))))
   (car (children (car (children contrived_variable5)))))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable5))))))
   (car (children contrived_variable5)))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable5))))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable5))))))
   (children (car (children (car (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable5))))))
   (children (car (children contrived_variable5))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (pred (data (car (children (car (children contrived_variable5))))))
   (data (car (children (car (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable5))))
   (children (car (children contrived_variable5))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable5))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable5)))))
   (car (children contrived_variable5)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable5))))))
   (cdr (children (car (children contrived_variable5)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable5))))))
   (children (car (children contrived_variable5))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable5)))))
   (cdr (children (car (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable5)))))
   (children (car (children contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable5)))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable5))))))
   (car (children contrived_variable5)))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable5))))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable5))))))
   (cdr (cdr (children (car (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable5))))))
   (cdr (children (car (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable5))))))
   (children (car (children contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (pred (data (car (children contrived_variable5))))
   (data (car (children contrived_variable5))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable5)))))
   (pred (data (car (children contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable5)))))
   (data (car (children contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable5))))))
   (pred (pred (data (car (children contrived_variable5))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable5))))))
   (pred (data (car (children contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable5))))))
   (data (car (children contrived_variable5))))))
(assert
 (not (= (cdr (children contrived_variable5)) (children contrived_variable5))))
(assert
 (not (= (car (cdr (children contrived_variable5))) contrived_variable5)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable5))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable5))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable5)))))
   (car (cdr (children contrived_variable5))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable5))))))
   (children (car (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable5))))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable5)))))
   (children (car (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable5)))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable5)))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable5))))))
   (car (cdr (children contrived_variable5))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable5))))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable5))))))
   (cdr (children (car (cdr (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable5))))))
   (children (car (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable5))))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable5)))))
   (data (car (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable5))))))
   (pred (data (car (cdr (children contrived_variable5))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable5))))))
   (data (car (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable5)))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable5)))
   (children contrived_variable5))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable5)))) contrived_variable5)))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable5)))))
   (cdr (cdr (children contrived_variable5))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable5)))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable5)))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable5))))))
   (car (cdr (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable5))))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable5))))))
   (children (car (cdr (cdr (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable5))))))
   (cdr (cdr (children contrived_variable5))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable5))))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children contrived_variable5))))))
   (data (car (cdr (cdr (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable5))))
   (cdr (cdr (children contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable5))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable5))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (cdr (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (cdr (children contrived_variable5))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable5)))))
   (cdr (cdr (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable5)))))
   (cdr (cdr (children contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable5)))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable5)))))
   (children contrived_variable5))))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children contrived_variable5))))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (cdr (cdr (cdr (children contrived_variable5))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (cdr (cdr (children contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (cdr (children contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable5))))))
   (cdr (children contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable5))))))
   (children contrived_variable5))))
(assert
 (not (= (pred (data contrived_variable5)) (data contrived_variable5))))
(assert
 (not
  (= (pred (pred (data contrived_variable5)))
   (pred (data contrived_variable5)))))
(assert
 (not (= (pred (pred (data contrived_variable5))) (data contrived_variable5))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable5))))
   (pred (pred (data contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable5))))
   (pred (data contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable5))))
   (data contrived_variable5))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable5)))))
   (pred (pred (pred (data contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable5)))))
   (pred (pred (data contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable5)))))
   (pred (data contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable5)))))
   (data contrived_variable5))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable5))))))
   (pred (pred (pred (pred (data contrived_variable5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable5))))))
   (pred (pred (pred (data contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable5))))))
   (pred (pred (data contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable5))))))
   (pred (data contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable5))))))
   (data contrived_variable5))))
(assert (not (= (car (children contrived_variable4)) contrived_variable4)))
(assert
 (not
  (= (children (car (children contrived_variable4)))
   (children contrived_variable4))))
(assert
 (not
  (= (car (children (car (children contrived_variable4))))
   (car (children contrived_variable4)))))
(assert
 (not
  (= (car (children (car (children contrived_variable4))))
   contrived_variable4)))
(assert
 (not
  (= (children (car (children (car (children contrived_variable4)))))
   (children (car (children contrived_variable4))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable4)))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable4))))))
   (car (children (car (children contrived_variable4)))))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable4))))))
   (car (children contrived_variable4)))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable4))))))
   contrived_variable4)))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable4))))))
   (children (car (children (car (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable4))))))
   (children (car (children contrived_variable4))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (pred (data (car (children (car (children contrived_variable4))))))
   (data (car (children (car (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable4))))
   (children (car (children contrived_variable4))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable4))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable4)))))
   (car (children contrived_variable4)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable4)))))
   contrived_variable4)))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable4))))))
   (cdr (children (car (children contrived_variable4)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable4))))))
   (children (car (children contrived_variable4))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable4)))))
   (cdr (children (car (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable4)))))
   (children (car (children contrived_variable4))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable4)))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable4))))))
   (car (children contrived_variable4)))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable4))))))
   contrived_variable4)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable4))))))
   (cdr (cdr (children (car (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable4))))))
   (cdr (children (car (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable4))))))
   (children (car (children contrived_variable4))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (pred (data (car (children contrived_variable4))))
   (data (car (children contrived_variable4))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable4)))))
   (pred (data (car (children contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable4)))))
   (data (car (children contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable4))))))
   (pred (pred (data (car (children contrived_variable4))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable4))))))
   (pred (data (car (children contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable4))))))
   (data (car (children contrived_variable4))))))
(assert
 (not (= (cdr (children contrived_variable4)) (children contrived_variable4))))
(assert
 (not (= (car (cdr (children contrived_variable4))) contrived_variable4)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable4))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable4))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable4)))))
   (car (cdr (children contrived_variable4))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable4)))))
   contrived_variable4)))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable4))))))
   (children (car (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable4))))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable4)))))
   (children (car (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable4)))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable4)))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable4))))))
   (car (cdr (children contrived_variable4))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable4))))))
   contrived_variable4)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable4))))))
   (cdr (children (car (cdr (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable4))))))
   (children (car (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable4))))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable4)))))
   (data (car (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable4))))))
   (pred (data (car (cdr (children contrived_variable4))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable4))))))
   (data (car (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable4)))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable4)))
   (children contrived_variable4))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable4)))) contrived_variable4)))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable4)))))
   (cdr (cdr (children contrived_variable4))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable4)))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable4)))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable4))))))
   (car (cdr (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable4))))))
   contrived_variable4)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable4))))))
   (children (car (cdr (cdr (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable4))))))
   (cdr (cdr (children contrived_variable4))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable4))))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children contrived_variable4))))))
   (data (car (cdr (cdr (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable4))))
   (cdr (cdr (children contrived_variable4))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable4))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable4))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable4)))))
   contrived_variable4)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (cdr (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (cdr (children contrived_variable4))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable4)))))
   (cdr (cdr (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable4)))))
   (cdr (cdr (children contrived_variable4))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable4)))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable4)))))
   (children contrived_variable4))))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children contrived_variable4))))))
   contrived_variable4)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (cdr (cdr (cdr (children contrived_variable4))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (cdr (cdr (children contrived_variable4)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (cdr (children contrived_variable4))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable4))))))
   (cdr (children contrived_variable4)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable4))))))
   (children contrived_variable4))))
(assert
 (not (= (pred (data contrived_variable4)) (data contrived_variable4))))
(assert
 (not
  (= (pred (pred (data contrived_variable4)))
   (pred (data contrived_variable4)))))
(assert
 (not (= (pred (pred (data contrived_variable4))) (data contrived_variable4))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable4))))
   (pred (pred (data contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable4))))
   (pred (data contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable4))))
   (data contrived_variable4))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable4)))))
   (pred (pred (pred (data contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable4)))))
   (pred (pred (data contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable4)))))
   (pred (data contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable4)))))
   (data contrived_variable4))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable4))))))
   (pred (pred (pred (pred (data contrived_variable4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable4))))))
   (pred (pred (pred (data contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable4))))))
   (pred (pred (data contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable4))))))
   (pred (data contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable4))))))
   (data contrived_variable4))))
(assert (not (= (car (children x9)) x9)))
(assert (not (= (children (car (children x9))) (children x9))))
(assert (not (= (car (children (car (children x9)))) (car (children x9)))))
(assert (not (= (car (children (car (children x9)))) x9)))
(assert
 (not
  (= (children (car (children (car (children x9)))))
   (children (car (children x9))))))
(assert
 (not (= (children (car (children (car (children x9))))) (children x9))))
(assert
 (not
  (= (car (children (car (children (car (children x9))))))
   (car (children (car (children x9)))))))
(assert
 (not
  (= (car (children (car (children (car (children x9))))))
   (car (children x9)))))
(assert (not (= (car (children (car (children (car (children x9)))))) x9)))
(assert
 (not
  (= (cdr (children (car (children (car (children x9))))))
   (children (car (children (car (children x9))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children x9))))))
   (children (car (children x9))))))
(assert
 (not (= (cdr (children (car (children (car (children x9)))))) (children x9))))
(assert
 (not
  (= (pred (data (car (children (car (children x9))))))
   (data (car (children (car (children x9))))))))
(assert
 (not (= (cdr (children (car (children x9)))) (children (car (children x9))))))
(assert (not (= (cdr (children (car (children x9)))) (children x9))))
(assert
 (not (= (car (cdr (children (car (children x9))))) (car (children x9)))))
(assert (not (= (car (cdr (children (car (children x9))))) x9)))
(assert
 (not
  (= (children (car (cdr (children (car (children x9))))))
   (cdr (children (car (children x9)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children x9))))))
   (children (car (children x9))))))
(assert
 (not (= (children (car (cdr (children (car (children x9)))))) (children x9))))
(assert
 (not
  (= (cdr (cdr (children (car (children x9)))))
   (cdr (children (car (children x9)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x9)))))
   (children (car (children x9))))))
(assert (not (= (cdr (cdr (children (car (children x9))))) (children x9))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children x9)))))) (car (children x9)))))
(assert (not (= (car (cdr (cdr (children (car (children x9)))))) x9)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x9))))))
   (cdr (cdr (children (car (children x9))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x9))))))
   (cdr (children (car (children x9)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x9))))))
   (children (car (children x9))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (children x9)))))) (children x9))))
(assert
 (not (= (pred (data (car (children x9)))) (data (car (children x9))))))
(assert
 (not
  (= (pred (pred (data (car (children x9)))))
   (pred (data (car (children x9)))))))
(assert
 (not (= (pred (pred (data (car (children x9))))) (data (car (children x9))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x9))))))
   (pred (pred (data (car (children x9))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x9))))))
   (pred (data (car (children x9)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x9))))))
   (data (car (children x9))))))
(assert (not (= (cdr (children x9)) (children x9))))
(assert (not (= (car (cdr (children x9))) x9)))
(assert (not (= (children (car (cdr (children x9)))) (cdr (children x9)))))
(assert (not (= (children (car (cdr (children x9)))) (children x9))))
(assert
 (not
  (= (car (children (car (cdr (children x9))))) (car (cdr (children x9))))))
(assert (not (= (car (children (car (cdr (children x9))))) x9)))
(assert
 (not
  (= (children (car (children (car (cdr (children x9))))))
   (children (car (cdr (children x9)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children x9))))))
   (cdr (children x9)))))
(assert
 (not (= (children (car (children (car (cdr (children x9)))))) (children x9))))
(assert
 (not
  (= (cdr (children (car (cdr (children x9)))))
   (children (car (cdr (children x9)))))))
(assert
 (not (= (cdr (children (car (cdr (children x9))))) (cdr (children x9)))))
(assert (not (= (cdr (children (car (cdr (children x9))))) (children x9))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children x9))))))
   (car (cdr (children x9))))))
(assert (not (= (car (cdr (children (car (cdr (children x9)))))) x9)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x9))))))
   (cdr (children (car (cdr (children x9))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x9))))))
   (children (car (cdr (children x9)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x9)))))) (cdr (children x9)))))
(assert
 (not (= (cdr (cdr (children (car (cdr (children x9)))))) (children x9))))
(assert
 (not
  (= (pred (data (car (cdr (children x9))))) (data (car (cdr (children x9)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x9))))))
   (pred (data (car (cdr (children x9))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x9))))))
   (data (car (cdr (children x9)))))))
(assert (not (= (cdr (cdr (children x9))) (cdr (children x9)))))
(assert (not (= (cdr (cdr (children x9))) (children x9))))
(assert (not (= (car (cdr (cdr (children x9)))) x9)))
(assert
 (not
  (= (children (car (cdr (cdr (children x9))))) (cdr (cdr (children x9))))))
(assert
 (not (= (children (car (cdr (cdr (children x9))))) (cdr (children x9)))))
(assert (not (= (children (car (cdr (cdr (children x9))))) (children x9))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children x9))))))
   (car (cdr (cdr (children x9)))))))
(assert (not (= (car (children (car (cdr (cdr (children x9)))))) x9)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x9))))))
   (children (car (cdr (cdr (children x9))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x9))))))
   (cdr (cdr (children x9))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x9)))))) (cdr (children x9)))))
(assert
 (not (= (cdr (children (car (cdr (cdr (children x9)))))) (children x9))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children x9))))))
   (data (car (cdr (cdr (children x9))))))))
(assert (not (= (cdr (cdr (cdr (children x9)))) (cdr (cdr (children x9))))))
(assert (not (= (cdr (cdr (cdr (children x9)))) (cdr (children x9)))))
(assert (not (= (cdr (cdr (cdr (children x9)))) (children x9))))
(assert (not (= (car (cdr (cdr (cdr (children x9))))) x9)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x9))))))
   (cdr (cdr (cdr (children x9)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x9))))))
   (cdr (cdr (children x9))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x9)))))) (cdr (children x9)))))
(assert
 (not (= (children (car (cdr (cdr (cdr (children x9)))))) (children x9))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x9))))) (cdr (cdr (cdr (children x9)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x9))))) (cdr (cdr (children x9))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x9))))) (cdr (children x9)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x9))))) (children x9))))
(assert (not (= (car (cdr (cdr (cdr (cdr (children x9)))))) x9)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x9))))))
   (cdr (cdr (cdr (cdr (children x9))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x9))))))
   (cdr (cdr (cdr (children x9)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x9)))))) (cdr (cdr (children x9))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (children x9)))))) (cdr (children x9)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children x9)))))) (children x9))))
(assert (not (= (pred (data x9)) (data x9))))
(assert (not (= (pred (pred (data x9))) (pred (data x9)))))
(assert (not (= (pred (pred (data x9))) (data x9))))
(assert (not (= (pred (pred (pred (data x9)))) (pred (pred (data x9))))))
(assert (not (= (pred (pred (pred (data x9)))) (pred (data x9)))))
(assert (not (= (pred (pred (pred (data x9)))) (data x9))))
(assert
 (not
  (= (pred (pred (pred (pred (data x9))))) (pred (pred (pred (data x9)))))))
(assert
 (not (= (pred (pred (pred (pred (data x9))))) (pred (pred (data x9))))))
(assert (not (= (pred (pred (pred (pred (data x9))))) (pred (data x9)))))
(assert (not (= (pred (pred (pred (pred (data x9))))) (data x9))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x9))))))
   (pred (pred (pred (pred (data x9))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x9))))))
   (pred (pred (pred (data x9)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x9)))))) (pred (pred (data x9))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data x9)))))) (pred (data x9)))))
(assert (not (= (pred (pred (pred (pred (pred (data x9)))))) (data x9))))
(assert (not (= (car (children x8)) x8)))
(assert (not (= (children (car (children x8))) (children x8))))
(assert (not (= (car (children (car (children x8)))) (car (children x8)))))
(assert (not (= (car (children (car (children x8)))) x8)))
(assert
 (not
  (= (children (car (children (car (children x8)))))
   (children (car (children x8))))))
(assert
 (not (= (children (car (children (car (children x8))))) (children x8))))
(assert
 (not
  (= (car (children (car (children (car (children x8))))))
   (car (children (car (children x8)))))))
(assert
 (not
  (= (car (children (car (children (car (children x8))))))
   (car (children x8)))))
(assert (not (= (car (children (car (children (car (children x8)))))) x8)))
(assert
 (not
  (= (cdr (children (car (children (car (children x8))))))
   (children (car (children (car (children x8))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children x8))))))
   (children (car (children x8))))))
(assert
 (not (= (cdr (children (car (children (car (children x8)))))) (children x8))))
(assert
 (not
  (= (pred (data (car (children (car (children x8))))))
   (data (car (children (car (children x8))))))))
(assert
 (not (= (cdr (children (car (children x8)))) (children (car (children x8))))))
(assert (not (= (cdr (children (car (children x8)))) (children x8))))
(assert
 (not (= (car (cdr (children (car (children x8))))) (car (children x8)))))
(assert (not (= (car (cdr (children (car (children x8))))) x8)))
(assert
 (not
  (= (children (car (cdr (children (car (children x8))))))
   (cdr (children (car (children x8)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children x8))))))
   (children (car (children x8))))))
(assert
 (not (= (children (car (cdr (children (car (children x8)))))) (children x8))))
(assert
 (not
  (= (cdr (cdr (children (car (children x8)))))
   (cdr (children (car (children x8)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x8)))))
   (children (car (children x8))))))
(assert (not (= (cdr (cdr (children (car (children x8))))) (children x8))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children x8)))))) (car (children x8)))))
(assert (not (= (car (cdr (cdr (children (car (children x8)))))) x8)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x8))))))
   (cdr (cdr (children (car (children x8))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x8))))))
   (cdr (children (car (children x8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x8))))))
   (children (car (children x8))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (children x8)))))) (children x8))))
(assert
 (not (= (pred (data (car (children x8)))) (data (car (children x8))))))
(assert
 (not
  (= (pred (pred (data (car (children x8)))))
   (pred (data (car (children x8)))))))
(assert
 (not (= (pred (pred (data (car (children x8))))) (data (car (children x8))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x8))))))
   (pred (pred (data (car (children x8))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x8))))))
   (pred (data (car (children x8)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x8))))))
   (data (car (children x8))))))
(assert (not (= (cdr (children x8)) (children x8))))
(assert (not (= (car (cdr (children x8))) x8)))
(assert (not (= (children (car (cdr (children x8)))) (cdr (children x8)))))
(assert (not (= (children (car (cdr (children x8)))) (children x8))))
(assert
 (not
  (= (car (children (car (cdr (children x8))))) (car (cdr (children x8))))))
(assert (not (= (car (children (car (cdr (children x8))))) x8)))
(assert
 (not
  (= (children (car (children (car (cdr (children x8))))))
   (children (car (cdr (children x8)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children x8))))))
   (cdr (children x8)))))
(assert
 (not (= (children (car (children (car (cdr (children x8)))))) (children x8))))
(assert
 (not
  (= (cdr (children (car (cdr (children x8)))))
   (children (car (cdr (children x8)))))))
(assert
 (not (= (cdr (children (car (cdr (children x8))))) (cdr (children x8)))))
(assert (not (= (cdr (children (car (cdr (children x8))))) (children x8))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children x8))))))
   (car (cdr (children x8))))))
(assert (not (= (car (cdr (children (car (cdr (children x8)))))) x8)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x8))))))
   (cdr (children (car (cdr (children x8))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x8))))))
   (children (car (cdr (children x8)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x8)))))) (cdr (children x8)))))
(assert
 (not (= (cdr (cdr (children (car (cdr (children x8)))))) (children x8))))
(assert
 (not
  (= (pred (data (car (cdr (children x8))))) (data (car (cdr (children x8)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x8))))))
   (pred (data (car (cdr (children x8))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x8))))))
   (data (car (cdr (children x8)))))))
(assert (not (= (cdr (cdr (children x8))) (cdr (children x8)))))
(assert (not (= (cdr (cdr (children x8))) (children x8))))
(assert (not (= (car (cdr (cdr (children x8)))) x8)))
(assert
 (not
  (= (children (car (cdr (cdr (children x8))))) (cdr (cdr (children x8))))))
(assert
 (not (= (children (car (cdr (cdr (children x8))))) (cdr (children x8)))))
(assert (not (= (children (car (cdr (cdr (children x8))))) (children x8))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children x8))))))
   (car (cdr (cdr (children x8)))))))
(assert (not (= (car (children (car (cdr (cdr (children x8)))))) x8)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x8))))))
   (children (car (cdr (cdr (children x8))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x8))))))
   (cdr (cdr (children x8))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x8)))))) (cdr (children x8)))))
(assert
 (not (= (cdr (children (car (cdr (cdr (children x8)))))) (children x8))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children x8))))))
   (data (car (cdr (cdr (children x8))))))))
(assert (not (= (cdr (cdr (cdr (children x8)))) (cdr (cdr (children x8))))))
(assert (not (= (cdr (cdr (cdr (children x8)))) (cdr (children x8)))))
(assert (not (= (cdr (cdr (cdr (children x8)))) (children x8))))
(assert (not (= (car (cdr (cdr (cdr (children x8))))) x8)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x8))))))
   (cdr (cdr (cdr (children x8)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x8))))))
   (cdr (cdr (children x8))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x8)))))) (cdr (children x8)))))
(assert
 (not (= (children (car (cdr (cdr (cdr (children x8)))))) (children x8))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x8))))) (cdr (cdr (cdr (children x8)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x8))))) (cdr (cdr (children x8))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x8))))) (cdr (children x8)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x8))))) (children x8))))
(assert (not (= (car (cdr (cdr (cdr (cdr (children x8)))))) x8)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x8))))))
   (cdr (cdr (cdr (cdr (children x8))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x8))))))
   (cdr (cdr (cdr (children x8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x8)))))) (cdr (cdr (children x8))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (children x8)))))) (cdr (children x8)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children x8)))))) (children x8))))
(assert (not (= (pred (data x8)) (data x8))))
(assert (not (= (pred (pred (data x8))) (pred (data x8)))))
(assert (not (= (pred (pred (data x8))) (data x8))))
(assert (not (= (pred (pred (pred (data x8)))) (pred (pred (data x8))))))
(assert (not (= (pred (pred (pred (data x8)))) (pred (data x8)))))
(assert (not (= (pred (pred (pred (data x8)))) (data x8))))
(assert
 (not
  (= (pred (pred (pred (pred (data x8))))) (pred (pred (pred (data x8)))))))
(assert
 (not (= (pred (pred (pred (pred (data x8))))) (pred (pred (data x8))))))
(assert (not (= (pred (pred (pred (pred (data x8))))) (pred (data x8)))))
(assert (not (= (pred (pred (pred (pred (data x8))))) (data x8))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x8))))))
   (pred (pred (pred (pred (data x8))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x8))))))
   (pred (pred (pred (data x8)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x8)))))) (pred (pred (data x8))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data x8)))))) (pred (data x8)))))
(assert (not (= (pred (pred (pred (pred (pred (data x8)))))) (data x8))))
(assert (not (= (car (children x7)) x7)))
(assert (not (= (children (car (children x7))) (children x7))))
(assert (not (= (car (children (car (children x7)))) (car (children x7)))))
(assert (not (= (car (children (car (children x7)))) x7)))
(assert
 (not
  (= (children (car (children (car (children x7)))))
   (children (car (children x7))))))
(assert
 (not (= (children (car (children (car (children x7))))) (children x7))))
(assert
 (not
  (= (car (children (car (children (car (children x7))))))
   (car (children (car (children x7)))))))
(assert
 (not
  (= (car (children (car (children (car (children x7))))))
   (car (children x7)))))
(assert (not (= (car (children (car (children (car (children x7)))))) x7)))
(assert
 (not
  (= (cdr (children (car (children (car (children x7))))))
   (children (car (children (car (children x7))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children x7))))))
   (children (car (children x7))))))
(assert
 (not (= (cdr (children (car (children (car (children x7)))))) (children x7))))
(assert
 (not
  (= (pred (data (car (children (car (children x7))))))
   (data (car (children (car (children x7))))))))
(assert
 (not (= (cdr (children (car (children x7)))) (children (car (children x7))))))
(assert (not (= (cdr (children (car (children x7)))) (children x7))))
(assert
 (not (= (car (cdr (children (car (children x7))))) (car (children x7)))))
(assert (not (= (car (cdr (children (car (children x7))))) x7)))
(assert
 (not
  (= (children (car (cdr (children (car (children x7))))))
   (cdr (children (car (children x7)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children x7))))))
   (children (car (children x7))))))
(assert
 (not (= (children (car (cdr (children (car (children x7)))))) (children x7))))
(assert
 (not
  (= (cdr (cdr (children (car (children x7)))))
   (cdr (children (car (children x7)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x7)))))
   (children (car (children x7))))))
(assert (not (= (cdr (cdr (children (car (children x7))))) (children x7))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children x7)))))) (car (children x7)))))
(assert (not (= (car (cdr (cdr (children (car (children x7)))))) x7)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x7))))))
   (cdr (cdr (children (car (children x7))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x7))))))
   (cdr (children (car (children x7)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x7))))))
   (children (car (children x7))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (children x7)))))) (children x7))))
(assert
 (not (= (pred (data (car (children x7)))) (data (car (children x7))))))
(assert
 (not
  (= (pred (pred (data (car (children x7)))))
   (pred (data (car (children x7)))))))
(assert
 (not (= (pred (pred (data (car (children x7))))) (data (car (children x7))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x7))))))
   (pred (pred (data (car (children x7))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x7))))))
   (pred (data (car (children x7)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x7))))))
   (data (car (children x7))))))
(assert (not (= (cdr (children x7)) (children x7))))
(assert (not (= (car (cdr (children x7))) x7)))
(assert (not (= (children (car (cdr (children x7)))) (cdr (children x7)))))
(assert (not (= (children (car (cdr (children x7)))) (children x7))))
(assert
 (not
  (= (car (children (car (cdr (children x7))))) (car (cdr (children x7))))))
(assert (not (= (car (children (car (cdr (children x7))))) x7)))
(assert
 (not
  (= (children (car (children (car (cdr (children x7))))))
   (children (car (cdr (children x7)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children x7))))))
   (cdr (children x7)))))
(assert
 (not (= (children (car (children (car (cdr (children x7)))))) (children x7))))
(assert
 (not
  (= (cdr (children (car (cdr (children x7)))))
   (children (car (cdr (children x7)))))))
(assert
 (not (= (cdr (children (car (cdr (children x7))))) (cdr (children x7)))))
(assert (not (= (cdr (children (car (cdr (children x7))))) (children x7))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children x7))))))
   (car (cdr (children x7))))))
(assert (not (= (car (cdr (children (car (cdr (children x7)))))) x7)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x7))))))
   (cdr (children (car (cdr (children x7))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x7))))))
   (children (car (cdr (children x7)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x7)))))) (cdr (children x7)))))
(assert
 (not (= (cdr (cdr (children (car (cdr (children x7)))))) (children x7))))
(assert
 (not
  (= (pred (data (car (cdr (children x7))))) (data (car (cdr (children x7)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x7))))))
   (pred (data (car (cdr (children x7))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x7))))))
   (data (car (cdr (children x7)))))))
(assert (not (= (cdr (cdr (children x7))) (cdr (children x7)))))
(assert (not (= (cdr (cdr (children x7))) (children x7))))
(assert (not (= (car (cdr (cdr (children x7)))) x7)))
(assert
 (not
  (= (children (car (cdr (cdr (children x7))))) (cdr (cdr (children x7))))))
(assert
 (not (= (children (car (cdr (cdr (children x7))))) (cdr (children x7)))))
(assert (not (= (children (car (cdr (cdr (children x7))))) (children x7))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children x7))))))
   (car (cdr (cdr (children x7)))))))
(assert (not (= (car (children (car (cdr (cdr (children x7)))))) x7)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x7))))))
   (children (car (cdr (cdr (children x7))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x7))))))
   (cdr (cdr (children x7))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x7)))))) (cdr (children x7)))))
(assert
 (not (= (cdr (children (car (cdr (cdr (children x7)))))) (children x7))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children x7))))))
   (data (car (cdr (cdr (children x7))))))))
(assert (not (= (cdr (cdr (cdr (children x7)))) (cdr (cdr (children x7))))))
(assert (not (= (cdr (cdr (cdr (children x7)))) (cdr (children x7)))))
(assert (not (= (cdr (cdr (cdr (children x7)))) (children x7))))
(assert (not (= (car (cdr (cdr (cdr (children x7))))) x7)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x7))))))
   (cdr (cdr (cdr (children x7)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x7))))))
   (cdr (cdr (children x7))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x7)))))) (cdr (children x7)))))
(assert
 (not (= (children (car (cdr (cdr (cdr (children x7)))))) (children x7))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x7))))) (cdr (cdr (cdr (children x7)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x7))))) (cdr (cdr (children x7))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x7))))) (cdr (children x7)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x7))))) (children x7))))
(assert (not (= (car (cdr (cdr (cdr (cdr (children x7)))))) x7)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x7))))))
   (cdr (cdr (cdr (cdr (children x7))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x7))))))
   (cdr (cdr (cdr (children x7)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x7)))))) (cdr (cdr (children x7))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (children x7)))))) (cdr (children x7)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children x7)))))) (children x7))))
(assert (not (= (pred (data x7)) (data x7))))
(assert (not (= (pred (pred (data x7))) (pred (data x7)))))
(assert (not (= (pred (pred (data x7))) (data x7))))
(assert (not (= (pred (pred (pred (data x7)))) (pred (pred (data x7))))))
(assert (not (= (pred (pred (pred (data x7)))) (pred (data x7)))))
(assert (not (= (pred (pred (pred (data x7)))) (data x7))))
(assert
 (not
  (= (pred (pred (pred (pred (data x7))))) (pred (pred (pred (data x7)))))))
(assert
 (not (= (pred (pred (pred (pred (data x7))))) (pred (pred (data x7))))))
(assert (not (= (pred (pred (pred (pred (data x7))))) (pred (data x7)))))
(assert (not (= (pred (pred (pred (pred (data x7))))) (data x7))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x7))))))
   (pred (pred (pred (pred (data x7))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x7))))))
   (pred (pred (pred (data x7)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x7)))))) (pred (pred (data x7))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data x7)))))) (pred (data x7)))))
(assert (not (= (pred (pred (pred (pred (pred (data x7)))))) (data x7))))
(assert (not (= (pred contrived_variable7) contrived_variable7)))
(assert
 (not (= (pred (pred contrived_variable7)) (pred contrived_variable7))))
(assert (not (= (pred (pred contrived_variable7)) contrived_variable7)))
(assert
 (not
  (= (pred (pred (pred contrived_variable7)))
   (pred (pred contrived_variable7)))))
(assert
 (not (= (pred (pred (pred contrived_variable7))) (pred contrived_variable7))))
(assert
 (not (= (pred (pred (pred contrived_variable7))) contrived_variable7)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable7))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable7))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable7))))
   (pred contrived_variable7))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable7)))) contrived_variable7)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable7)))))
   (pred (pred (pred (pred contrived_variable7)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable7)))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable7)))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable7)))))
   (pred contrived_variable7))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable7)))))
   contrived_variable7)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable7))))))
   (pred (pred (pred (pred (pred contrived_variable7))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable7))))))
   (pred (pred (pred (pred contrived_variable7)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable7))))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable7))))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable7))))))
   (pred contrived_variable7))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable7))))))
   contrived_variable7)))
(assert (not (= (pred contrived_variable3) contrived_variable3)))
(assert
 (not (= (pred (pred contrived_variable3)) (pred contrived_variable3))))
(assert (not (= (pred (pred contrived_variable3)) contrived_variable3)))
(assert
 (not
  (= (pred (pred (pred contrived_variable3)))
   (pred (pred contrived_variable3)))))
(assert
 (not (= (pred (pred (pred contrived_variable3))) (pred contrived_variable3))))
(assert
 (not (= (pred (pred (pred contrived_variable3))) contrived_variable3)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable3))))
   (pred (pred (pred contrived_variable3))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable3))))
   (pred (pred contrived_variable3)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable3))))
   (pred contrived_variable3))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable3)))) contrived_variable3)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable3)))))
   (pred (pred (pred (pred contrived_variable3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable3)))))
   (pred (pred (pred contrived_variable3))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable3)))))
   (pred (pred contrived_variable3)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable3)))))
   (pred contrived_variable3))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
   (pred (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
   (pred (pred (pred (pred contrived_variable3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
   (pred (pred (pred contrived_variable3))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
   (pred (pred contrived_variable3)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
   (pred contrived_variable3))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
   contrived_variable3)))
(assert (not (= (pred x3) x3)))
(assert (not (= (pred (pred x3)) (pred x3))))
(assert (not (= (pred (pred x3)) x3)))
(assert (not (= (pred (pred (pred x3))) (pred (pred x3)))))
(assert (not (= (pred (pred (pred x3))) (pred x3))))
(assert (not (= (pred (pred (pred x3))) x3)))
(assert (not (= (pred (pred (pred (pred x3)))) (pred (pred (pred x3))))))
(assert (not (= (pred (pred (pred (pred x3)))) (pred (pred x3)))))
(assert (not (= (pred (pred (pred (pred x3)))) (pred x3))))
(assert (not (= (pred (pred (pred (pred x3)))) x3)))
(assert
 (not
  (= (pred (pred (pred (pred (pred x3))))) (pred (pred (pred (pred x3)))))))
(assert
 (not (= (pred (pred (pred (pred (pred x3))))) (pred (pred (pred x3))))))
(assert (not (= (pred (pred (pred (pred (pred x3))))) (pred (pred x3)))))
(assert (not (= (pred (pred (pred (pred (pred x3))))) (pred x3))))
(assert (not (= (pred (pred (pred (pred (pred x3))))) x3)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x3))))))
   (pred (pred (pred (pred (pred x3))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x3))))))
   (pred (pred (pred (pred x3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x3)))))) (pred (pred (pred x3))))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred x3)))))) (pred (pred x3)))))
(assert (not (= (pred (pred (pred (pred (pred (pred x3)))))) (pred x3))))
(assert (not (= (pred (pred (pred (pred (pred (pred x3)))))) x3)))
(assert (not (= (pred x2) x2)))
(assert (not (= (pred (pred x2)) (pred x2))))
(assert (not (= (pred (pred x2)) x2)))
(assert (not (= (pred (pred (pred x2))) (pred (pred x2)))))
(assert (not (= (pred (pred (pred x2))) (pred x2))))
(assert (not (= (pred (pred (pred x2))) x2)))
(assert (not (= (pred (pred (pred (pred x2)))) (pred (pred (pred x2))))))
(assert (not (= (pred (pred (pred (pred x2)))) (pred (pred x2)))))
(assert (not (= (pred (pred (pred (pred x2)))) (pred x2))))
(assert (not (= (pred (pred (pred (pred x2)))) x2)))
(assert
 (not
  (= (pred (pred (pred (pred (pred x2))))) (pred (pred (pred (pred x2)))))))
(assert
 (not (= (pred (pred (pred (pred (pred x2))))) (pred (pred (pred x2))))))
(assert (not (= (pred (pred (pred (pred (pred x2))))) (pred (pred x2)))))
(assert (not (= (pred (pred (pred (pred (pred x2))))) (pred x2))))
(assert (not (= (pred (pred (pred (pred (pred x2))))) x2)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x2))))))
   (pred (pred (pred (pred (pred x2))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x2))))))
   (pred (pred (pred (pred x2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x2)))))) (pred (pred (pred x2))))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred x2)))))) (pred (pred x2)))))
(assert (not (= (pred (pred (pred (pred (pred (pred x2)))))) (pred x2))))
(assert (not (= (pred (pred (pred (pred (pred (pred x2)))))) x2)))
(assert (not (= (pred x1) x1)))
(assert (not (= (pred (pred x1)) (pred x1))))
(assert (not (= (pred (pred x1)) x1)))
(assert (not (= (pred (pred (pred x1))) (pred (pred x1)))))
(assert (not (= (pred (pred (pred x1))) (pred x1))))
(assert (not (= (pred (pred (pred x1))) x1)))
(assert (not (= (pred (pred (pred (pred x1)))) (pred (pred (pred x1))))))
(assert (not (= (pred (pred (pred (pred x1)))) (pred (pred x1)))))
(assert (not (= (pred (pred (pred (pred x1)))) (pred x1))))
(assert (not (= (pred (pred (pred (pred x1)))) x1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred x1))))) (pred (pred (pred (pred x1)))))))
(assert
 (not (= (pred (pred (pred (pred (pred x1))))) (pred (pred (pred x1))))))
(assert (not (= (pred (pred (pred (pred (pred x1))))) (pred (pred x1)))))
(assert (not (= (pred (pred (pred (pred (pred x1))))) (pred x1))))
(assert (not (= (pred (pred (pred (pred (pred x1))))) x1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x1))))))
   (pred (pred (pred (pred (pred x1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x1))))))
   (pred (pred (pred (pred x1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x1)))))) (pred (pred (pred x1))))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred x1)))))) (pred (pred x1)))))
(assert (not (= (pred (pred (pred (pred (pred (pred x1)))))) (pred x1))))
(assert (not (= (pred (pred (pred (pred (pred (pred x1)))))) x1)))
(assert (not (= (pred zero) zero)))
(assert (not (= (pred (pred zero)) (pred zero))))
(assert (not (= (pred (pred zero)) zero)))
(assert (not (= (pred (pred (pred zero))) (pred (pred zero)))))
(assert (not (= (pred (pred (pred zero))) (pred zero))))
(assert (not (= (pred (pred (pred zero))) zero)))
(assert (not (= (pred (pred (pred (pred zero)))) (pred (pred (pred zero))))))
(assert (not (= (pred (pred (pred (pred zero)))) (pred (pred zero)))))
(assert (not (= (pred (pred (pred (pred zero)))) (pred zero))))
(assert (not (= (pred (pred (pred (pred zero)))) zero)))
(assert
 (not
  (= (pred (pred (pred (pred (pred zero))))) (pred (pred (pred (pred zero)))))))
(assert
 (not (= (pred (pred (pred (pred (pred zero))))) (pred (pred (pred zero))))))
(assert (not (= (pred (pred (pred (pred (pred zero))))) (pred (pred zero)))))
(assert (not (= (pred (pred (pred (pred (pred zero))))) (pred zero))))
(assert (not (= (pred (pred (pred (pred (pred zero))))) zero)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred zero))))))
   (pred (pred (pred (pred (pred zero))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred zero))))))
   (pred (pred (pred (pred zero)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred zero)))))) (pred (pred (pred zero))))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred zero)))))) (pred (pred zero)))))
(assert (not (= (pred (pred (pred (pred (pred (pred zero)))))) (pred zero))))
(assert (not (= (pred (pred (pred (pred (pred (pred zero)))))) zero)))
(check-sat)

