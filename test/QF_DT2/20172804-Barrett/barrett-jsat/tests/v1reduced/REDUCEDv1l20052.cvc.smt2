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
(declare-fun x2 () list)
(declare-fun x3 () tree)
(declare-fun contrived_variable1 () nat)
(declare-fun contrived_variable0 () tree)
(declare-fun contrived_variable4 () nat)
(declare-fun contrived_variable3 () tree)
(declare-fun contrived_variable5 () nat)
(declare-fun contrived_variable2 () nat)
(declare-fun contrived_variable6 () nat)
(declare-fun contrived_variable7 () nat)
(declare-fun contrived_variable8 () tree)
(declare-fun contrived_variable11 () nat)
(declare-fun contrived_variable9 () list)
(declare-fun contrived_variable10 () nat)
(assert (is-zero zero))
(assert (is-null null))
(assert
 (and (not (= contrived_variable3 contrived_variable0))
  (= contrived_variable5 contrived_variable4)))
(assert
 (and (= (pred contrived_variable2) contrived_variable1)
  (= (succ contrived_variable6) contrived_variable2)
  (= (pred contrived_variable2) contrived_variable6)))
(assert
 (and (= (leaf contrived_variable1) contrived_variable0)
  (is-leaf contrived_variable0)
  (= (data contrived_variable0) contrived_variable1)))
(assert
 (and (= (pred zero) contrived_variable4) (= (succ contrived_variable7) zero)
  (= (pred zero) contrived_variable7)))
(assert
 (and (= (car null) contrived_variable3)
  (= (cons contrived_variable8 contrived_variable9) null)
  (= (car null) contrived_variable8) (= (cdr null) contrived_variable9)))
(assert
 (and (= (data x3) contrived_variable5) (= (leaf contrived_variable10) x3)
  (= (data x3) contrived_variable10)))
(assert
 (and (= (pred x1) contrived_variable2) (= (succ contrived_variable11) x1)
  (= (pred x1) contrived_variable11)))
(assert
 (or (and (is-cons contrived_variable9) (not (is-null contrived_variable9)))
  (and (not (is-cons contrived_variable9)) (is-null contrived_variable9))))
(assert (=> (is-null contrived_variable9) (= contrived_variable9 null)))
(assert
 (or (and (is-cons x2) (not (is-null x2)))
  (and (not (is-cons x2)) (is-null x2))))
(assert (=> (is-null x2) (= x2 null)))
(assert
 (or (and (is-cons null) (not (is-null null)))
  (and (not (is-cons null)) (is-null null))))
(assert (=> (is-null null) (= null null)))
(assert
 (or (and (is-node contrived_variable8) (not (is-leaf contrived_variable8)))
  (and (not (is-node contrived_variable8)) (is-leaf contrived_variable8))))
(assert
 (or (and (is-node contrived_variable3) (not (is-leaf contrived_variable3)))
  (and (not (is-node contrived_variable3)) (is-leaf contrived_variable3))))
(assert
 (or (and (is-node contrived_variable0) (not (is-leaf contrived_variable0)))
  (and (not (is-node contrived_variable0)) (is-leaf contrived_variable0))))
(assert
 (or (and (is-node x3) (not (is-leaf x3)))
  (and (not (is-node x3)) (is-leaf x3))))
(assert
 (or
  (and (is-succ contrived_variable10) (not (is-zero contrived_variable10)))
  (and (not (is-succ contrived_variable10)) (is-zero contrived_variable10))))
(assert (=> (is-zero contrived_variable10) (= contrived_variable10 zero)))
(assert
 (or
  (and (is-succ contrived_variable11) (not (is-zero contrived_variable11)))
  (and (not (is-succ contrived_variable11)) (is-zero contrived_variable11))))
(assert (=> (is-zero contrived_variable11) (= contrived_variable11 zero)))
(assert
 (or (and (is-succ contrived_variable7) (not (is-zero contrived_variable7)))
  (and (not (is-succ contrived_variable7)) (is-zero contrived_variable7))))
(assert (=> (is-zero contrived_variable7) (= contrived_variable7 zero)))
(assert
 (or (and (is-succ contrived_variable6) (not (is-zero contrived_variable6)))
  (and (not (is-succ contrived_variable6)) (is-zero contrived_variable6))))
(assert (=> (is-zero contrived_variable6) (= contrived_variable6 zero)))
(assert
 (or (and (is-succ contrived_variable2) (not (is-zero contrived_variable2)))
  (and (not (is-succ contrived_variable2)) (is-zero contrived_variable2))))
(assert (=> (is-zero contrived_variable2) (= contrived_variable2 zero)))
(assert
 (or (and (is-succ contrived_variable5) (not (is-zero contrived_variable5)))
  (and (not (is-succ contrived_variable5)) (is-zero contrived_variable5))))
(assert (=> (is-zero contrived_variable5) (= contrived_variable5 zero)))
(assert
 (or (and (is-succ contrived_variable4) (not (is-zero contrived_variable4)))
  (and (not (is-succ contrived_variable4)) (is-zero contrived_variable4))))
(assert (=> (is-zero contrived_variable4) (= contrived_variable4 zero)))
(assert
 (or (and (is-succ contrived_variable1) (not (is-zero contrived_variable1)))
  (and (not (is-succ contrived_variable1)) (is-zero contrived_variable1))))
(assert (=> (is-zero contrived_variable1) (= contrived_variable1 zero)))
(assert
 (or (and (is-succ x1) (not (is-zero x1)))
  (and (not (is-succ x1)) (is-zero x1))))
(assert (=> (is-zero x1) (= x1 zero)))
(assert
 (or (and (is-succ zero) (not (is-zero zero)))
  (and (not (is-succ zero)) (is-zero zero))))
(assert (=> (is-zero zero) (= zero zero)))
(assert (not (= (children (car contrived_variable9)) contrived_variable9)))
(assert
 (not
  (= (car (children (car contrived_variable9))) (car contrived_variable9))))
(assert
 (not
  (= (cdr (children (car contrived_variable9)))
   (children (car contrived_variable9)))))
(assert
 (not (= (cdr (children (car contrived_variable9))) contrived_variable9)))
(assert
 (not
  (= (pred (data (car contrived_variable9))) (data (car contrived_variable9)))))
(assert (not (= (cdr contrived_variable9) contrived_variable9)))
(assert
 (not
  (= (children (car (cdr contrived_variable9))) (cdr contrived_variable9))))
(assert
 (not (= (children (car (cdr contrived_variable9))) contrived_variable9)))
(assert (not (= (cdr (cdr contrived_variable9)) (cdr contrived_variable9))))
(assert (not (= (cdr (cdr contrived_variable9)) contrived_variable9)))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable9))) (cdr (cdr contrived_variable9)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable9))) (cdr contrived_variable9))))
(assert (not (= (cdr (cdr (cdr contrived_variable9))) contrived_variable9)))
(assert (not (= (children (car x2)) x2)))
(assert (not (= (car (children (car x2))) (car x2))))
(assert (not (= (cdr (children (car x2))) (children (car x2)))))
(assert (not (= (cdr (children (car x2))) x2)))
(assert (not (= (pred (data (car x2))) (data (car x2)))))
(assert (not (= (cdr x2) x2)))
(assert (not (= (children (car (cdr x2))) (cdr x2))))
(assert (not (= (children (car (cdr x2))) x2)))
(assert (not (= (cdr (cdr x2)) (cdr x2))))
(assert (not (= (cdr (cdr x2)) x2)))
(assert (not (= (cdr (cdr (cdr x2))) (cdr (cdr x2)))))
(assert (not (= (cdr (cdr (cdr x2))) (cdr x2))))
(assert (not (= (cdr (cdr (cdr x2))) x2)))
(assert (not (= (children (car null)) null)))
(assert (not (= (car (children (car null))) (car null))))
(assert (not (= (cdr (children (car null))) (children (car null)))))
(assert (not (= (cdr (children (car null))) null)))
(assert (not (= (pred (data (car null))) (data (car null)))))
(assert (not (= (cdr null) null)))
(assert (not (= (children (car (cdr null))) (cdr null))))
(assert (not (= (children (car (cdr null))) null)))
(assert (not (= (cdr (cdr null)) (cdr null))))
(assert (not (= (cdr (cdr null)) null)))
(assert (not (= (cdr (cdr (cdr null))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr null))) (cdr null))))
(assert (not (= (cdr (cdr (cdr null))) null)))
(assert (not (= (car (children contrived_variable8)) contrived_variable8)))
(assert
 (not
  (= (children (car (children contrived_variable8)))
   (children contrived_variable8))))
(assert
 (not
  (= (car (children (car (children contrived_variable8))))
   (car (children contrived_variable8)))))
(assert
 (not
  (= (car (children (car (children contrived_variable8))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (children (car (children contrived_variable8))))
   (children (car (children contrived_variable8))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable8))))
   (children contrived_variable8))))
(assert
 (not
  (= (pred (data (car (children contrived_variable8))))
   (data (car (children contrived_variable8))))))
(assert
 (not (= (cdr (children contrived_variable8)) (children contrived_variable8))))
(assert
 (not (= (car (cdr (children contrived_variable8))) contrived_variable8)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable8))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable8))))
   (children contrived_variable8))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable8)))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable8)))
   (children contrived_variable8))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable8)))) contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable8))))
   (cdr (cdr (children contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable8))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable8))))
   (children contrived_variable8))))
(assert
 (not (= (pred (data contrived_variable8)) (data contrived_variable8))))
(assert
 (not
  (= (pred (pred (data contrived_variable8)))
   (pred (data contrived_variable8)))))
(assert
 (not (= (pred (pred (data contrived_variable8))) (data contrived_variable8))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable8))))
   (pred (pred (data contrived_variable8))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable8))))
   (pred (data contrived_variable8)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable8))))
   (data contrived_variable8))))
(assert (not (= (car (children contrived_variable3)) contrived_variable3)))
(assert
 (not
  (= (children (car (children contrived_variable3)))
   (children contrived_variable3))))
(assert
 (not
  (= (car (children (car (children contrived_variable3))))
   (car (children contrived_variable3)))))
(assert
 (not
  (= (car (children (car (children contrived_variable3))))
   contrived_variable3)))
(assert
 (not
  (= (cdr (children (car (children contrived_variable3))))
   (children (car (children contrived_variable3))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable3))))
   (children contrived_variable3))))
(assert
 (not
  (= (pred (data (car (children contrived_variable3))))
   (data (car (children contrived_variable3))))))
(assert
 (not (= (cdr (children contrived_variable3)) (children contrived_variable3))))
(assert
 (not (= (car (cdr (children contrived_variable3))) contrived_variable3)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable3))))
   (cdr (children contrived_variable3)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable3))))
   (children contrived_variable3))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable3)))
   (cdr (children contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable3)))
   (children contrived_variable3))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable3)))) contrived_variable3)))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable3))))
   (cdr (cdr (children contrived_variable3))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable3))))
   (cdr (children contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable3))))
   (children contrived_variable3))))
(assert
 (not (= (pred (data contrived_variable3)) (data contrived_variable3))))
(assert
 (not
  (= (pred (pred (data contrived_variable3)))
   (pred (data contrived_variable3)))))
(assert
 (not (= (pred (pred (data contrived_variable3))) (data contrived_variable3))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable3))))
   (pred (pred (data contrived_variable3))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable3))))
   (pred (data contrived_variable3)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable3))))
   (data contrived_variable3))))
(assert (not (= (car (children contrived_variable0)) contrived_variable0)))
(assert
 (not
  (= (children (car (children contrived_variable0)))
   (children contrived_variable0))))
(assert
 (not
  (= (car (children (car (children contrived_variable0))))
   (car (children contrived_variable0)))))
(assert
 (not
  (= (car (children (car (children contrived_variable0))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (children (car (children contrived_variable0))))
   (children (car (children contrived_variable0))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable0))))
   (children contrived_variable0))))
(assert
 (not
  (= (pred (data (car (children contrived_variable0))))
   (data (car (children contrived_variable0))))))
(assert
 (not (= (cdr (children contrived_variable0)) (children contrived_variable0))))
(assert
 (not (= (car (cdr (children contrived_variable0))) contrived_variable0)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable0))))
   (cdr (children contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable0))))
   (children contrived_variable0))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable0)))
   (cdr (children contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable0)))
   (children contrived_variable0))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable0)))) contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable0))))
   (cdr (cdr (children contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable0))))
   (cdr (children contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable0))))
   (children contrived_variable0))))
(assert
 (not (= (pred (data contrived_variable0)) (data contrived_variable0))))
(assert
 (not
  (= (pred (pred (data contrived_variable0)))
   (pred (data contrived_variable0)))))
(assert
 (not (= (pred (pred (data contrived_variable0))) (data contrived_variable0))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable0))))
   (pred (pred (data contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable0))))
   (pred (data contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable0))))
   (data contrived_variable0))))
(assert (not (= (car (children x3)) x3)))
(assert (not (= (children (car (children x3))) (children x3))))
(assert (not (= (car (children (car (children x3)))) (car (children x3)))))
(assert (not (= (car (children (car (children x3)))) x3)))
(assert
 (not (= (cdr (children (car (children x3)))) (children (car (children x3))))))
(assert (not (= (cdr (children (car (children x3)))) (children x3))))
(assert
 (not (= (pred (data (car (children x3)))) (data (car (children x3))))))
(assert (not (= (cdr (children x3)) (children x3))))
(assert (not (= (car (cdr (children x3))) x3)))
(assert (not (= (children (car (cdr (children x3)))) (cdr (children x3)))))
(assert (not (= (children (car (cdr (children x3)))) (children x3))))
(assert (not (= (cdr (cdr (children x3))) (cdr (children x3)))))
(assert (not (= (cdr (cdr (children x3))) (children x3))))
(assert (not (= (car (cdr (cdr (children x3)))) x3)))
(assert (not (= (cdr (cdr (cdr (children x3)))) (cdr (cdr (children x3))))))
(assert (not (= (cdr (cdr (cdr (children x3)))) (cdr (children x3)))))
(assert (not (= (cdr (cdr (cdr (children x3)))) (children x3))))
(assert (not (= (pred (data x3)) (data x3))))
(assert (not (= (pred (pred (data x3))) (pred (data x3)))))
(assert (not (= (pred (pred (data x3))) (data x3))))
(assert (not (= (pred (pred (pred (data x3)))) (pred (pred (data x3))))))
(assert (not (= (pred (pred (pred (data x3)))) (pred (data x3)))))
(assert (not (= (pred (pred (pred (data x3)))) (data x3))))
(assert (not (= (pred contrived_variable10) contrived_variable10)))
(assert
 (not (= (pred (pred contrived_variable10)) (pred contrived_variable10))))
(assert (not (= (pred (pred contrived_variable10)) contrived_variable10)))
(assert
 (not
  (= (pred (pred (pred contrived_variable10)))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (= (pred (pred (pred contrived_variable10))) (pred contrived_variable10))))
(assert
 (not (= (pred (pred (pred contrived_variable10))) contrived_variable10)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable10))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable10))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable10))))
   (pred contrived_variable10))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable10)))) contrived_variable10)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable10)))))
   (pred (pred (pred (pred contrived_variable10)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable10)))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable10)))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable10)))))
   (pred contrived_variable10))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable10)))))
   contrived_variable10)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable10))))))
   (pred (pred (pred (pred (pred contrived_variable10))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable10))))))
   (pred (pred (pred (pred contrived_variable10)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable10))))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable10))))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable10))))))
   (pred contrived_variable10))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable10))))))
   contrived_variable10)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable10)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   (pred (pred (pred (pred (pred contrived_variable10))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   (pred (pred (pred (pred contrived_variable10)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   (pred contrived_variable10))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable10)))))))
   contrived_variable10)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable10))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable10)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred (pred (pred (pred (pred contrived_variable10))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred (pred (pred (pred contrived_variable10)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   (pred contrived_variable10))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))
   contrived_variable10)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable10))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable10)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred (pred (pred (pred contrived_variable10))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred (pred (pred contrived_variable10)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   (pred contrived_variable10))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))
   contrived_variable10)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable10))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable10)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred (pred (pred contrived_variable10))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred (pred contrived_variable10)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred (pred contrived_variable10))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred (pred contrived_variable10)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   (pred contrived_variable10))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable10))))))))))
   contrived_variable10)))
(assert (not (= (pred contrived_variable11) contrived_variable11)))
(assert
 (not (= (pred (pred contrived_variable11)) (pred contrived_variable11))))
(assert (not (= (pred (pred contrived_variable11)) contrived_variable11)))
(assert
 (not
  (= (pred (pred (pred contrived_variable11)))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (= (pred (pred (pred contrived_variable11))) (pred contrived_variable11))))
(assert
 (not (= (pred (pred (pred contrived_variable11))) contrived_variable11)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable11))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable11))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable11))))
   (pred contrived_variable11))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable11)))) contrived_variable11)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable11)))))
   (pred (pred (pred (pred contrived_variable11)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable11)))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable11)))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable11)))))
   (pred contrived_variable11))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable11)))))
   contrived_variable11)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable11))))))
   (pred (pred (pred (pred (pred contrived_variable11))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable11))))))
   (pred (pred (pred (pred contrived_variable11)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable11))))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable11))))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable11))))))
   (pred contrived_variable11))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable11))))))
   contrived_variable11)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable11)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   (pred (pred (pred (pred (pred contrived_variable11))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   (pred (pred (pred (pred contrived_variable11)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   (pred contrived_variable11))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable11)))))))
   contrived_variable11)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable11))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable11)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred (pred (pred (pred (pred contrived_variable11))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred (pred (pred (pred contrived_variable11)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   (pred contrived_variable11))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))
   contrived_variable11)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable11))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable11)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred (pred (pred (pred contrived_variable11))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred (pred (pred contrived_variable11)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   (pred contrived_variable11))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))
   contrived_variable11)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable11))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable11)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred (pred (pred contrived_variable11))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred (pred contrived_variable11)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred (pred contrived_variable11))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred (pred contrived_variable11)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   (pred contrived_variable11))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable11))))))))))
   contrived_variable11)))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable7)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   (pred (pred (pred (pred (pred contrived_variable7))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   (pred (pred (pred (pred contrived_variable7)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   (pred contrived_variable7))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))
   contrived_variable7)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable7)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred (pred (pred (pred (pred contrived_variable7))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred (pred (pred (pred contrived_variable7)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   (pred contrived_variable7))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))
   contrived_variable7)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable7)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred (pred (pred (pred contrived_variable7))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred (pred (pred contrived_variable7)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   (pred contrived_variable7))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7)))))))))
   contrived_variable7)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable7)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable7))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable7)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred (pred (pred contrived_variable7))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred (pred contrived_variable7)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred (pred contrived_variable7))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred (pred contrived_variable7)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   (pred contrived_variable7))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable7))))))))))
   contrived_variable7)))
(assert (not (= (pred contrived_variable6) contrived_variable6)))
(assert
 (not (= (pred (pred contrived_variable6)) (pred contrived_variable6))))
(assert (not (= (pred (pred contrived_variable6)) contrived_variable6)))
(assert
 (not
  (= (pred (pred (pred contrived_variable6)))
   (pred (pred contrived_variable6)))))
(assert
 (not (= (pred (pred (pred contrived_variable6))) (pred contrived_variable6))))
(assert
 (not (= (pred (pred (pred contrived_variable6))) contrived_variable6)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable6))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable6))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable6))))
   (pred contrived_variable6))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable6)))) contrived_variable6)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable6)))))
   (pred (pred (pred (pred contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable6)))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable6)))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable6)))))
   (pred contrived_variable6))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable6))))))
   (pred (pred (pred (pred (pred contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable6))))))
   (pred (pred (pred (pred contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable6))))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable6))))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable6))))))
   (pred contrived_variable6))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable6)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   (pred (pred (pred (pred (pred contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   (pred (pred (pred (pred contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   (pred contrived_variable6))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))
   contrived_variable6)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable6)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred (pred (pred (pred (pred contrived_variable6))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred (pred (pred (pred contrived_variable6)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   (pred contrived_variable6))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))
   contrived_variable6)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable6)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred (pred (pred (pred contrived_variable6))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred (pred (pred contrived_variable6)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   (pred contrived_variable6))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6)))))))))
   contrived_variable6)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable6)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable6))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable6)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred (pred (pred contrived_variable6))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred (pred contrived_variable6)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred (pred contrived_variable6))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred (pred contrived_variable6)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   (pred contrived_variable6))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable6))))))))))
   contrived_variable6)))
(assert (not (= (pred contrived_variable2) contrived_variable2)))
(assert
 (not (= (pred (pred contrived_variable2)) (pred contrived_variable2))))
(assert (not (= (pred (pred contrived_variable2)) contrived_variable2)))
(assert
 (not
  (= (pred (pred (pred contrived_variable2)))
   (pred (pred contrived_variable2)))))
(assert
 (not (= (pred (pred (pred contrived_variable2))) (pred contrived_variable2))))
(assert
 (not (= (pred (pred (pred contrived_variable2))) contrived_variable2)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable2))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable2))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable2))))
   (pred contrived_variable2))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable2)))) contrived_variable2)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable2)))))
   (pred (pred (pred (pred contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable2)))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable2)))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable2)))))
   (pred contrived_variable2))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable2)))))
   contrived_variable2)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
   (pred (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
   (pred (pred (pred (pred contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
   (pred contrived_variable2))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
   contrived_variable2)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (pred (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (pred (pred (pred (pred contrived_variable2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (pred contrived_variable2))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   contrived_variable2)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred (pred (pred (pred contrived_variable2)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   (pred contrived_variable2))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
   contrived_variable2)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred (pred (pred contrived_variable2)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   (pred contrived_variable2))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
   contrived_variable2)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable2))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred (pred contrived_variable2)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred (pred contrived_variable2))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred (pred contrived_variable2)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   (pred contrived_variable2))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2))))))))))
   contrived_variable2)))
(assert (not (= (pred contrived_variable5) contrived_variable5)))
(assert
 (not (= (pred (pred contrived_variable5)) (pred contrived_variable5))))
(assert (not (= (pred (pred contrived_variable5)) contrived_variable5)))
(assert
 (not
  (= (pred (pred (pred contrived_variable5)))
   (pred (pred contrived_variable5)))))
(assert
 (not (= (pred (pred (pred contrived_variable5))) (pred contrived_variable5))))
(assert
 (not (= (pred (pred (pred contrived_variable5))) contrived_variable5)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable5))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable5))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable5))))
   (pred contrived_variable5))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable5)))) contrived_variable5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable5)))))
   (pred (pred (pred (pred contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable5)))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable5)))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable5)))))
   (pred contrived_variable5))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable5))))))
   (pred (pred (pred (pred (pred contrived_variable5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable5))))))
   (pred (pred (pred (pred contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable5))))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable5))))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable5))))))
   (pred contrived_variable5))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable5))))))
   contrived_variable5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable5)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   (pred (pred (pred (pred (pred contrived_variable5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   (pred (pred (pred (pred contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   (pred contrived_variable5))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))
   contrived_variable5)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable5)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred (pred (pred (pred (pred contrived_variable5))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred (pred (pred (pred contrived_variable5)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   (pred contrived_variable5))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))
   contrived_variable5)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable5)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred (pred (pred (pred contrived_variable5))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred (pred (pred contrived_variable5)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   (pred contrived_variable5))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5)))))))))
   contrived_variable5)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable5)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable5))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable5)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred (pred (pred contrived_variable5))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred (pred contrived_variable5)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred (pred contrived_variable5))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred (pred contrived_variable5)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   (pred contrived_variable5))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable5))))))))))
   contrived_variable5)))
(assert (not (= (pred contrived_variable4) contrived_variable4)))
(assert
 (not (= (pred (pred contrived_variable4)) (pred contrived_variable4))))
(assert (not (= (pred (pred contrived_variable4)) contrived_variable4)))
(assert
 (not
  (= (pred (pred (pred contrived_variable4)))
   (pred (pred contrived_variable4)))))
(assert
 (not (= (pred (pred (pred contrived_variable4))) (pred contrived_variable4))))
(assert
 (not (= (pred (pred (pred contrived_variable4))) contrived_variable4)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable4))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable4))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable4))))
   (pred contrived_variable4))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable4)))) contrived_variable4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable4)))))
   (pred (pred (pred (pred contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable4)))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable4)))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable4)))))
   (pred contrived_variable4))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable4)))))
   contrived_variable4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
   (pred (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
   (pred (pred (pred (pred contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
   (pred contrived_variable4))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
   contrived_variable4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (pred (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (pred (pred (pred (pred contrived_variable4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (pred contrived_variable4))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   contrived_variable4)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred (pred (pred (pred contrived_variable4)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   (pred contrived_variable4))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
   contrived_variable4)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred (pred (pred contrived_variable4)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   (pred contrived_variable4))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
   contrived_variable4)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable4))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred (pred contrived_variable4)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred (pred contrived_variable4))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred (pred contrived_variable4)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   (pred contrived_variable4))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4))))))))))
   contrived_variable4)))
(assert (not (= (pred contrived_variable1) contrived_variable1)))
(assert
 (not (= (pred (pred contrived_variable1)) (pred contrived_variable1))))
(assert (not (= (pred (pred contrived_variable1)) contrived_variable1)))
(assert
 (not
  (= (pred (pred (pred contrived_variable1)))
   (pred (pred contrived_variable1)))))
(assert
 (not (= (pred (pred (pred contrived_variable1))) (pred contrived_variable1))))
(assert
 (not (= (pred (pred (pred contrived_variable1))) contrived_variable1)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable1))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable1))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable1))))
   (pred contrived_variable1))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable1)))) contrived_variable1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable1)))))
   (pred (pred (pred (pred contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable1)))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable1)))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable1)))))
   (pred contrived_variable1))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
   (pred (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
   (pred (pred (pred (pred contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
   (pred contrived_variable1))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (pred (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (pred (pred (pred (pred contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (pred contrived_variable1))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   contrived_variable1)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred (pred (pred (pred contrived_variable1)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   (pred contrived_variable1))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
   contrived_variable1)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred (pred (pred contrived_variable1)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   (pred contrived_variable1))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
   contrived_variable1)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable1))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred (pred contrived_variable1)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred (pred contrived_variable1))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred (pred contrived_variable1)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   (pred contrived_variable1))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1))))))))))
   contrived_variable1)))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
   (pred (pred (pred (pred (pred (pred x1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
   (pred (pred (pred (pred (pred x1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
   (pred (pred (pred (pred x1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
   (pred (pred (pred x1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x1))))))) (pred (pred x1)))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred x1))))))) (pred x1))))
(assert (not (= (pred (pred (pred (pred (pred (pred (pred x1))))))) x1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
   (pred (pred (pred (pred (pred (pred (pred x1))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
   (pred (pred (pred (pred (pred (pred x1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
   (pred (pred (pred (pred (pred x1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
   (pred (pred (pred (pred x1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
   (pred (pred (pred x1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
   (pred (pred x1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))) (pred x1))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))) x1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred (pred (pred (pred (pred (pred x1))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred (pred (pred (pred (pred x1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred (pred (pred (pred x1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred (pred (pred x1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred (pred x1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred (pred x1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))
   (pred x1))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))) x1)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred (pred (pred (pred (pred x1))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred (pred (pred (pred x1)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred (pred (pred x1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred (pred x1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred (pred x1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred (pred x1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   (pred x1))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))))
   x1)))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
   (pred (pred (pred (pred (pred (pred zero)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
   (pred (pred (pred (pred (pred zero))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
   (pred (pred (pred (pred zero)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
   (pred (pred (pred zero))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred zero))))))) (pred (pred zero)))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred zero))))))) (pred zero))))
(assert (not (= (pred (pred (pred (pred (pred (pred (pred zero))))))) zero)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
   (pred (pred (pred (pred (pred (pred (pred zero))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
   (pred (pred (pred (pred (pred (pred zero)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
   (pred (pred (pred (pred (pred zero))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
   (pred (pred (pred (pred zero)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
   (pred (pred (pred zero))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
   (pred (pred zero)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))) (pred zero))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))) zero)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred (pred (pred (pred (pred (pred zero))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred (pred (pred (pred (pred zero)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred (pred (pred (pred zero))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred (pred (pred zero)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred (pred zero))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred (pred zero)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))
   (pred zero))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))) zero)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred (pred (pred (pred (pred zero))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred (pred (pred (pred zero)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred (pred (pred zero))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred (pred zero)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred (pred zero))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred (pred zero)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   (pred zero))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))))
   zero)))
(check-sat)

