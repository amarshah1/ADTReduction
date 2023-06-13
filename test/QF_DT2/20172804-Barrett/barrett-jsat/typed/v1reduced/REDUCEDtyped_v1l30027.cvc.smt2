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
(declare-fun contrived_variable0 () nat)
(declare-fun contrived_variable2 () nat)
(declare-fun contrived_variable1 () nat)
(declare-fun contrived_variable3 () nat)
(declare-fun contrived_variable4 () nat)
(declare-fun contrived_variable5 () nat)
(assert (is-zero zero))
(assert (is-null null))
(assert
 (and (and (not (= contrived_variable1 contrived_variable0))
  (not (= contrived_variable3 contrived_variable2))) (not ((_ is cons) null))))
(assert
 (and (= (succ zero) contrived_variable1) (is-succ contrived_variable1)
  (= (pred contrived_variable1) zero)))
(assert
 (and (= (succ zero) contrived_variable3) (is-succ contrived_variable3)
  (= (pred contrived_variable3) zero)))
(assert
 (or
  (and (is-leaf x3) (and (= (data x3) contrived_variable0)
   (= (leaf contrived_variable4) x3) (= (data x3) contrived_variable4)))
  (and (not (is-leaf x3)) (= contrived_variable0 zero))))
(assert
 (or
  (and ((_ is succ) zero) (and (= (pred zero) contrived_variable2)
   (= (succ contrived_variable5) zero) (= (pred zero) contrived_variable5)))
  (and (not ((_ is succ) zero)) (= contrived_variable2 zero))))
(assert
 (or (and (is-cons x2) (not (is-null x2)))
  (and (not (is-cons x2)) (is-null x2))))
(assert (=> (is-null x2) (= x2 null)))
(assert
 (or (and (is-cons null) (not (is-null null)))
  (and (not (is-cons null)) (is-null null))))
(assert (=> (is-null null) (= null null)))
(assert
 (or (and (is-node x3) (not (is-leaf x3)))
  (and (not (is-node x3)) (is-leaf x3))))
(assert
 (or (and (is-succ contrived_variable5) (not (is-zero contrived_variable5)))
  (and (not (is-succ contrived_variable5)) (is-zero contrived_variable5))))
(assert (=> (is-zero contrived_variable5) (= contrived_variable5 zero)))
(assert
 (or (and (is-succ contrived_variable4) (not (is-zero contrived_variable4)))
  (and (not (is-succ contrived_variable4)) (is-zero contrived_variable4))))
(assert (=> (is-zero contrived_variable4) (= contrived_variable4 zero)))
(assert
 (or (and (is-succ contrived_variable3) (not (is-zero contrived_variable3)))
  (and (not (is-succ contrived_variable3)) (is-zero contrived_variable3))))
(assert (=> (is-zero contrived_variable3) (= contrived_variable3 zero)))
(assert
 (or (and (is-succ contrived_variable1) (not (is-zero contrived_variable1)))
  (and (not (is-succ contrived_variable1)) (is-zero contrived_variable1))))
(assert (=> (is-zero contrived_variable1) (= contrived_variable1 zero)))
(assert
 (or (and (is-succ contrived_variable2) (not (is-zero contrived_variable2)))
  (and (not (is-succ contrived_variable2)) (is-zero contrived_variable2))))
(assert (=> (is-zero contrived_variable2) (= contrived_variable2 zero)))
(assert
 (or (and (is-succ contrived_variable0) (not (is-zero contrived_variable0)))
  (and (not (is-succ contrived_variable0)) (is-zero contrived_variable0))))
(assert (=> (is-zero contrived_variable0) (= contrived_variable0 zero)))
(assert
 (or (and (is-succ x1) (not (is-zero x1)))
  (and (not (is-succ x1)) (is-zero x1))))
(assert (=> (is-zero x1) (= x1 zero)))
(assert
 (or (and (is-succ zero) (not (is-zero zero)))
  (and (not (is-succ zero)) (is-zero zero))))
(assert (=> (is-zero zero) (= zero zero)))
(assert (not (= (children (car x2)) x2)))
(assert (not (= (cdr x2) x2)))
(assert (not (= (cdr (cdr x2)) (cdr x2))))
(assert (not (= (cdr (cdr x2)) x2)))
(assert (not (= (children (car null)) null)))
(assert (not (= (cdr null) null)))
(assert (not (= (cdr (cdr null)) (cdr null))))
(assert (not (= (cdr (cdr null)) null)))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (pred (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (pred (pred (pred (pred contrived_variable3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (pred (pred (pred contrived_variable3))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (pred (pred contrived_variable3)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (pred contrived_variable3))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   contrived_variable3)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred (pred (pred (pred contrived_variable3)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred (pred (pred contrived_variable3))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred (pred contrived_variable3)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   (pred contrived_variable3))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
   contrived_variable3)))
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
(assert (not (= (pred contrived_variable0) contrived_variable0)))
(assert
 (not (= (pred (pred contrived_variable0)) (pred contrived_variable0))))
(assert (not (= (pred (pred contrived_variable0)) contrived_variable0)))
(assert
 (not
  (= (pred (pred (pred contrived_variable0)))
   (pred (pred contrived_variable0)))))
(assert
 (not (= (pred (pred (pred contrived_variable0))) (pred contrived_variable0))))
(assert
 (not (= (pred (pred (pred contrived_variable0))) contrived_variable0)))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable0))))
   (pred (pred (pred contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable0))))
   (pred (pred contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred contrived_variable0))))
   (pred contrived_variable0))))
(assert
 (not (= (pred (pred (pred (pred contrived_variable0)))) contrived_variable0)))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable0)))))
   (pred (pred (pred (pred contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable0)))))
   (pred (pred (pred contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable0)))))
   (pred (pred contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable0)))))
   (pred contrived_variable0))))
(assert
 (not
  (= (pred (pred (pred (pred (pred contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
   (pred (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
   (pred (pred (pred (pred contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
   (pred (pred (pred contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
   (pred (pred contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
   (pred contrived_variable0))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
   contrived_variable0)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (pred (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (pred (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (pred (pred (pred (pred contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (pred (pred (pred contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (pred (pred contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (pred contrived_variable0))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   contrived_variable0)))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred (pred (pred (pred contrived_variable0)))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred (pred (pred contrived_variable0))))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred (pred contrived_variable0)))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   (pred contrived_variable0))))
(assert
 (not
  (=
   (pred (pred (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
   contrived_variable0)))
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
(check-sat)

