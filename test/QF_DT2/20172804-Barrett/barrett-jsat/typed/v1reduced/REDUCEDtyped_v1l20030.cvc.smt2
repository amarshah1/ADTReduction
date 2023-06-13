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
(declare-fun contrived_variable4 () tree)
(declare-fun contrived_variable6 () tree)
(declare-fun contrived_variable1 () tree)
(declare-fun contrived_variable3 () list)
(declare-fun contrived_variable5 () list)
(declare-fun contrived_variable2 () tree)
(declare-fun contrived_variable7 () nat)
(declare-fun contrived_variable8 () tree)
(declare-fun contrived_variable9 () list)
(assert (is-zero zero))
(assert (is-null null))
(assert (and ((_ is zero) contrived_variable0) (= contrived_variable3 x2)))
(assert
 (and (= (node x2) contrived_variable6) (is-node contrived_variable6)
  (= (children contrived_variable6) x2)))
(assert
 (and (= (leaf x1) contrived_variable1) (is-leaf contrived_variable1)
  (= (data contrived_variable1) x1)))
(assert
 (and (= (cons contrived_variable4 contrived_variable5) contrived_variable3)
  (is-cons contrived_variable3)
  (= (car contrived_variable3) contrived_variable4)
  (= (cdr contrived_variable3) contrived_variable5)))
(assert
 (and (= (cons contrived_variable6 null) contrived_variable5)
  (is-cons contrived_variable5)
  (= (car contrived_variable5) contrived_variable6)
  (= (cdr contrived_variable5) null)))
(assert
 (and (= (leaf x1) contrived_variable2) (is-leaf contrived_variable2)
  (= (data contrived_variable2) x1)))
(assert
 (or
  (and (is-leaf contrived_variable2) (and
   (= (data contrived_variable1) contrived_variable0)
   (= (leaf contrived_variable7) contrived_variable1)
   (= (data contrived_variable1) contrived_variable7)))
  (and (not (is-leaf contrived_variable2)) (= contrived_variable0 zero))))
(assert
 (or
  (and ((_ is cons) x2) (and (= (car x2) contrived_variable4)
   (= (cons contrived_variable8 contrived_variable9) x2)
   (= (car x2) contrived_variable8) (= (cdr x2) contrived_variable9)))
  (and (not ((_ is cons) x2)) (and (= (leaf zero) contrived_variable4)
   (is-leaf contrived_variable4) (= (data contrived_variable4) zero)))))
(assert
 (or (and (is-cons contrived_variable9) (not (is-null contrived_variable9)))
  (and (not (is-cons contrived_variable9)) (is-null contrived_variable9))))
(assert (=> (is-null contrived_variable9) (= contrived_variable9 null)))
(assert
 (or (and (is-cons contrived_variable5) (not (is-null contrived_variable5)))
  (and (not (is-cons contrived_variable5)) (is-null contrived_variable5))))
(assert (=> (is-null contrived_variable5) (= contrived_variable5 null)))
(assert
 (or (and (is-cons contrived_variable3) (not (is-null contrived_variable3)))
  (and (not (is-cons contrived_variable3)) (is-null contrived_variable3))))
(assert (=> (is-null contrived_variable3) (= contrived_variable3 null)))
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
 (or (and (is-node contrived_variable2) (not (is-leaf contrived_variable2)))
  (and (not (is-node contrived_variable2)) (is-leaf contrived_variable2))))
(assert
 (or (and (is-node contrived_variable1) (not (is-leaf contrived_variable1)))
  (and (not (is-node contrived_variable1)) (is-leaf contrived_variable1))))
(assert
 (or (and (is-node contrived_variable6) (not (is-leaf contrived_variable6)))
  (and (not (is-node contrived_variable6)) (is-leaf contrived_variable6))))
(assert
 (or (and (is-node contrived_variable4) (not (is-leaf contrived_variable4)))
  (and (not (is-node contrived_variable4)) (is-leaf contrived_variable4))))
(assert
 (or (and (is-node x3) (not (is-leaf x3)))
  (and (not (is-node x3)) (is-leaf x3))))
(assert
 (or (and (is-succ contrived_variable7) (not (is-zero contrived_variable7)))
  (and (not (is-succ contrived_variable7)) (is-zero contrived_variable7))))
(assert (=> (is-zero contrived_variable7) (= contrived_variable7 zero)))
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
(assert (not (= (children (car contrived_variable9)) contrived_variable9)))
(assert
 (not
  (= (car (children (car contrived_variable9))) (car contrived_variable9))))
(assert
 (not
  (= (children (car (children (car contrived_variable9))))
   (children (car contrived_variable9)))))
(assert
 (not
  (= (children (car (children (car contrived_variable9))))
   contrived_variable9)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable9)))))
   (car (children (car contrived_variable9))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable9)))))
   (car contrived_variable9))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable9)))))
   (children (car (children (car contrived_variable9)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable9)))))
   (children (car contrived_variable9)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable9)))))
   (data (car (children (car contrived_variable9)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable9)))
   (children (car contrived_variable9)))))
(assert
 (not (= (cdr (children (car contrived_variable9))) contrived_variable9)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable9))))
   (car contrived_variable9))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable9)))))
   (cdr (children (car contrived_variable9))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable9)))))
   (children (car contrived_variable9)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable9))))
   (cdr (children (car contrived_variable9))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable9))))
   (children (car contrived_variable9)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable9)))) contrived_variable9)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable9)))))
   (car contrived_variable9))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable9)))))
   (cdr (cdr (children (car contrived_variable9)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable9)))))
   (cdr (children (car contrived_variable9))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable9)))))
   (children (car contrived_variable9)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (pred (data (car contrived_variable9))) (data (car contrived_variable9)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable9))))
   (pred (data (car contrived_variable9))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable9))))
   (data (car contrived_variable9)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable9)))))
   (pred (pred (data (car contrived_variable9)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable9)))))
   (pred (data (car contrived_variable9))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable9)))))
   (data (car contrived_variable9)))))
(assert (not (= (cdr contrived_variable9) contrived_variable9)))
(assert
 (not
  (= (children (car (cdr contrived_variable9))) (cdr contrived_variable9))))
(assert
 (not (= (children (car (cdr contrived_variable9))) contrived_variable9)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable9))))
   (car (cdr contrived_variable9)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable9)))))
   (children (car (cdr contrived_variable9))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable9)))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable9))))
   (children (car (cdr contrived_variable9))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable9))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable9)))) contrived_variable9)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable9)))))
   (car (cdr contrived_variable9)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable9)))))
   (cdr (children (car (cdr contrived_variable9)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable9)))))
   (children (car (cdr contrived_variable9))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable9)))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable9))))
   (data (car (cdr contrived_variable9))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable9)))))
   (pred (data (car (cdr contrived_variable9)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable9)))))
   (data (car (cdr contrived_variable9))))))
(assert (not (= (cdr (cdr contrived_variable9)) (cdr contrived_variable9))))
(assert (not (= (cdr (cdr contrived_variable9)) contrived_variable9)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable9))))
   (cdr (cdr contrived_variable9)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable9))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable9)))) contrived_variable9)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable9)))))
   (car (cdr (cdr contrived_variable9))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable9)))))
   (children (car (cdr (cdr contrived_variable9)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable9)))))
   (cdr (cdr contrived_variable9)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable9)))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable9)))))
   (data (car (cdr (cdr contrived_variable9)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable9))) (cdr (cdr contrived_variable9)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable9))) (cdr contrived_variable9))))
(assert (not (= (cdr (cdr (cdr contrived_variable9))) contrived_variable9)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable9)))))
   (cdr (cdr (cdr contrived_variable9))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable9)))))
   (cdr (cdr contrived_variable9)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable9)))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable9)))))
   contrived_variable9)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable9))))
   (cdr (cdr (cdr contrived_variable9))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable9))))
   (cdr (cdr contrived_variable9)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable9)))) (cdr contrived_variable9))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable9)))) contrived_variable9)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable9)))))
   (cdr (cdr (cdr (cdr contrived_variable9)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable9)))))
   (cdr (cdr (cdr contrived_variable9))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable9)))))
   (cdr (cdr contrived_variable9)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable9)))))
   (cdr contrived_variable9))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable9))))) contrived_variable9)))
(assert (not (= (children (car contrived_variable5)) contrived_variable5)))
(assert
 (not
  (= (car (children (car contrived_variable5))) (car contrived_variable5))))
(assert
 (not
  (= (children (car (children (car contrived_variable5))))
   (children (car contrived_variable5)))))
(assert
 (not
  (= (children (car (children (car contrived_variable5))))
   contrived_variable5)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable5)))))
   (car (children (car contrived_variable5))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable5)))))
   (car contrived_variable5))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable5)))))
   (children (car (children (car contrived_variable5)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable5)))))
   (children (car contrived_variable5)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable5)))))
   (data (car (children (car contrived_variable5)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable5)))
   (children (car contrived_variable5)))))
(assert
 (not (= (cdr (children (car contrived_variable5))) contrived_variable5)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable5))))
   (car contrived_variable5))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable5)))))
   (cdr (children (car contrived_variable5))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable5)))))
   (children (car contrived_variable5)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable5))))
   (cdr (children (car contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable5))))
   (children (car contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable5)))) contrived_variable5)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable5)))))
   (car contrived_variable5))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable5)))))
   (cdr (cdr (children (car contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable5)))))
   (cdr (children (car contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable5)))))
   (children (car contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (pred (data (car contrived_variable5))) (data (car contrived_variable5)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable5))))
   (pred (data (car contrived_variable5))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable5))))
   (data (car contrived_variable5)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable5)))))
   (pred (pred (data (car contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable5)))))
   (pred (data (car contrived_variable5))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable5)))))
   (data (car contrived_variable5)))))
(assert (not (= (cdr contrived_variable5) contrived_variable5)))
(assert
 (not
  (= (children (car (cdr contrived_variable5))) (cdr contrived_variable5))))
(assert
 (not (= (children (car (cdr contrived_variable5))) contrived_variable5)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable5))))
   (car (cdr contrived_variable5)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable5)))))
   (children (car (cdr contrived_variable5))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable5)))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable5))))
   (children (car (cdr contrived_variable5))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable5))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable5)))) contrived_variable5)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable5)))))
   (car (cdr contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable5)))))
   (cdr (children (car (cdr contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable5)))))
   (children (car (cdr contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable5)))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable5))))
   (data (car (cdr contrived_variable5))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable5)))))
   (pred (data (car (cdr contrived_variable5)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable5)))))
   (data (car (cdr contrived_variable5))))))
(assert (not (= (cdr (cdr contrived_variable5)) (cdr contrived_variable5))))
(assert (not (= (cdr (cdr contrived_variable5)) contrived_variable5)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable5))))
   (cdr (cdr contrived_variable5)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable5))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable5)))) contrived_variable5)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable5)))))
   (car (cdr (cdr contrived_variable5))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable5)))))
   (children (car (cdr (cdr contrived_variable5)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable5)))))
   (cdr (cdr contrived_variable5)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable5)))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable5)))))
   (data (car (cdr (cdr contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable5))) (cdr (cdr contrived_variable5)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable5))) (cdr contrived_variable5))))
(assert (not (= (cdr (cdr (cdr contrived_variable5))) contrived_variable5)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable5)))))
   (cdr (cdr (cdr contrived_variable5))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable5)))))
   (cdr (cdr contrived_variable5)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable5)))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable5)))))
   contrived_variable5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable5))))
   (cdr (cdr (cdr contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable5))))
   (cdr (cdr contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable5)))) (cdr contrived_variable5))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable5)))) contrived_variable5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable5)))))
   (cdr (cdr (cdr (cdr contrived_variable5)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable5)))))
   (cdr (cdr (cdr contrived_variable5))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable5)))))
   (cdr (cdr contrived_variable5)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable5)))))
   (cdr contrived_variable5))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable5))))) contrived_variable5)))
(assert (not (= (children (car contrived_variable3)) contrived_variable3)))
(assert
 (not
  (= (car (children (car contrived_variable3))) (car contrived_variable3))))
(assert
 (not
  (= (children (car (children (car contrived_variable3))))
   (children (car contrived_variable3)))))
(assert
 (not
  (= (children (car (children (car contrived_variable3))))
   contrived_variable3)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable3)))))
   (car (children (car contrived_variable3))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable3)))))
   (car contrived_variable3))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable3)))))
   (children (car (children (car contrived_variable3)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable3)))))
   (children (car contrived_variable3)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable3)))))
   (data (car (children (car contrived_variable3)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable3)))
   (children (car contrived_variable3)))))
(assert
 (not (= (cdr (children (car contrived_variable3))) contrived_variable3)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable3))))
   (car contrived_variable3))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable3)))))
   (cdr (children (car contrived_variable3))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable3)))))
   (children (car contrived_variable3)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable3))))
   (cdr (children (car contrived_variable3))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable3))))
   (children (car contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable3)))) contrived_variable3)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable3)))))
   (car contrived_variable3))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable3)))))
   (cdr (cdr (children (car contrived_variable3)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable3)))))
   (cdr (children (car contrived_variable3))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable3)))))
   (children (car contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (pred (data (car contrived_variable3))) (data (car contrived_variable3)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable3))))
   (pred (data (car contrived_variable3))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable3))))
   (data (car contrived_variable3)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable3)))))
   (pred (pred (data (car contrived_variable3)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable3)))))
   (pred (data (car contrived_variable3))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable3)))))
   (data (car contrived_variable3)))))
(assert (not (= (cdr contrived_variable3) contrived_variable3)))
(assert
 (not
  (= (children (car (cdr contrived_variable3))) (cdr contrived_variable3))))
(assert
 (not (= (children (car (cdr contrived_variable3))) contrived_variable3)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable3))))
   (car (cdr contrived_variable3)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable3)))))
   (children (car (cdr contrived_variable3))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable3)))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable3))))
   (children (car (cdr contrived_variable3))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable3))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable3)))) contrived_variable3)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable3)))))
   (car (cdr contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable3)))))
   (cdr (children (car (cdr contrived_variable3)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable3)))))
   (children (car (cdr contrived_variable3))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable3)))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable3))))
   (data (car (cdr contrived_variable3))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable3)))))
   (pred (data (car (cdr contrived_variable3)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable3)))))
   (data (car (cdr contrived_variable3))))))
(assert (not (= (cdr (cdr contrived_variable3)) (cdr contrived_variable3))))
(assert (not (= (cdr (cdr contrived_variable3)) contrived_variable3)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable3))))
   (cdr (cdr contrived_variable3)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable3))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable3)))) contrived_variable3)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable3)))))
   (car (cdr (cdr contrived_variable3))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable3)))))
   (children (car (cdr (cdr contrived_variable3)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable3)))))
   (cdr (cdr contrived_variable3)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable3)))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable3)))))
   (data (car (cdr (cdr contrived_variable3)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable3))) (cdr (cdr contrived_variable3)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable3))) (cdr contrived_variable3))))
(assert (not (= (cdr (cdr (cdr contrived_variable3))) contrived_variable3)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable3)))))
   (cdr (cdr (cdr contrived_variable3))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable3)))))
   (cdr (cdr contrived_variable3)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable3)))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable3)))))
   contrived_variable3)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable3))))
   (cdr (cdr (cdr contrived_variable3))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable3))))
   (cdr (cdr contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable3)))) (cdr contrived_variable3))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable3)))) contrived_variable3)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable3)))))
   (cdr (cdr (cdr (cdr contrived_variable3)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable3)))))
   (cdr (cdr (cdr contrived_variable3))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable3)))))
   (cdr (cdr contrived_variable3)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable3)))))
   (cdr contrived_variable3))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable3))))) contrived_variable3)))
(assert (not (= (children (car x2)) x2)))
(assert (not (= (car (children (car x2))) (car x2))))
(assert (not (= (children (car (children (car x2)))) (children (car x2)))))
(assert (not (= (children (car (children (car x2)))) x2)))
(assert
 (not
  (= (car (children (car (children (car x2))))) (car (children (car x2))))))
(assert (not (= (car (children (car (children (car x2))))) (car x2))))
(assert
 (not
  (= (cdr (children (car (children (car x2)))))
   (children (car (children (car x2)))))))
(assert
 (not (= (cdr (children (car (children (car x2))))) (children (car x2)))))
(assert (not (= (cdr (children (car (children (car x2))))) x2)))
(assert
 (not
  (= (pred (data (car (children (car x2))))) (data (car (children (car x2)))))))
(assert (not (= (cdr (children (car x2))) (children (car x2)))))
(assert (not (= (cdr (children (car x2))) x2)))
(assert (not (= (car (cdr (children (car x2)))) (car x2))))
(assert
 (not
  (= (children (car (cdr (children (car x2))))) (cdr (children (car x2))))))
(assert
 (not (= (children (car (cdr (children (car x2))))) (children (car x2)))))
(assert (not (= (children (car (cdr (children (car x2))))) x2)))
(assert (not (= (cdr (cdr (children (car x2)))) (cdr (children (car x2))))))
(assert (not (= (cdr (cdr (children (car x2)))) (children (car x2)))))
(assert (not (= (cdr (cdr (children (car x2)))) x2)))
(assert (not (= (car (cdr (cdr (children (car x2))))) (car x2))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x2))))) (cdr (cdr (children (car x2)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x2))))) (cdr (children (car x2))))))
(assert (not (= (cdr (cdr (cdr (children (car x2))))) (children (car x2)))))
(assert (not (= (cdr (cdr (cdr (children (car x2))))) x2)))
(assert (not (= (pred (data (car x2))) (data (car x2)))))
(assert (not (= (pred (pred (data (car x2)))) (pred (data (car x2))))))
(assert (not (= (pred (pred (data (car x2)))) (data (car x2)))))
(assert
 (not (= (pred (pred (pred (data (car x2))))) (pred (pred (data (car x2)))))))
(assert (not (= (pred (pred (pred (data (car x2))))) (pred (data (car x2))))))
(assert (not (= (pred (pred (pred (data (car x2))))) (data (car x2)))))
(assert (not (= (cdr x2) x2)))
(assert (not (= (children (car (cdr x2))) (cdr x2))))
(assert (not (= (children (car (cdr x2))) x2)))
(assert (not (= (car (children (car (cdr x2)))) (car (cdr x2)))))
(assert
 (not
  (= (children (car (children (car (cdr x2))))) (children (car (cdr x2))))))
(assert (not (= (children (car (children (car (cdr x2))))) (cdr x2))))
(assert (not (= (children (car (children (car (cdr x2))))) x2)))
(assert (not (= (cdr (children (car (cdr x2)))) (children (car (cdr x2))))))
(assert (not (= (cdr (children (car (cdr x2)))) (cdr x2))))
(assert (not (= (cdr (children (car (cdr x2)))) x2)))
(assert (not (= (car (cdr (children (car (cdr x2))))) (car (cdr x2)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x2))))) (cdr (children (car (cdr x2)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x2))))) (children (car (cdr x2))))))
(assert (not (= (cdr (cdr (children (car (cdr x2))))) (cdr x2))))
(assert (not (= (cdr (cdr (children (car (cdr x2))))) x2)))
(assert (not (= (pred (data (car (cdr x2)))) (data (car (cdr x2))))))
(assert
 (not (= (pred (pred (data (car (cdr x2))))) (pred (data (car (cdr x2)))))))
(assert (not (= (pred (pred (data (car (cdr x2))))) (data (car (cdr x2))))))
(assert (not (= (cdr (cdr x2)) (cdr x2))))
(assert (not (= (cdr (cdr x2)) x2)))
(assert (not (= (children (car (cdr (cdr x2)))) (cdr (cdr x2)))))
(assert (not (= (children (car (cdr (cdr x2)))) (cdr x2))))
(assert (not (= (children (car (cdr (cdr x2)))) x2)))
(assert (not (= (car (children (car (cdr (cdr x2))))) (car (cdr (cdr x2))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x2))))) (children (car (cdr (cdr x2)))))))
(assert (not (= (cdr (children (car (cdr (cdr x2))))) (cdr (cdr x2)))))
(assert (not (= (cdr (children (car (cdr (cdr x2))))) (cdr x2))))
(assert (not (= (cdr (children (car (cdr (cdr x2))))) x2)))
(assert
 (not (= (pred (data (car (cdr (cdr x2))))) (data (car (cdr (cdr x2)))))))
(assert (not (= (cdr (cdr (cdr x2))) (cdr (cdr x2)))))
(assert (not (= (cdr (cdr (cdr x2))) (cdr x2))))
(assert (not (= (cdr (cdr (cdr x2))) x2)))
(assert (not (= (children (car (cdr (cdr (cdr x2))))) (cdr (cdr (cdr x2))))))
(assert (not (= (children (car (cdr (cdr (cdr x2))))) (cdr (cdr x2)))))
(assert (not (= (children (car (cdr (cdr (cdr x2))))) (cdr x2))))
(assert (not (= (children (car (cdr (cdr (cdr x2))))) x2)))
(assert (not (= (cdr (cdr (cdr (cdr x2)))) (cdr (cdr (cdr x2))))))
(assert (not (= (cdr (cdr (cdr (cdr x2)))) (cdr (cdr x2)))))
(assert (not (= (cdr (cdr (cdr (cdr x2)))) (cdr x2))))
(assert (not (= (cdr (cdr (cdr (cdr x2)))) x2)))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x2))))) (cdr (cdr (cdr (cdr x2)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x2))))) (cdr (cdr (cdr x2))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x2))))) (cdr (cdr x2)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x2))))) (cdr x2))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x2))))) x2)))
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
  (= (cdr (children (car (children (car null)))))
   (children (car (children (car null)))))))
(assert
 (not (= (cdr (children (car (children (car null))))) (children (car null)))))
(assert (not (= (cdr (children (car (children (car null))))) null)))
(assert
 (not
  (= (pred (data (car (children (car null)))))
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
 (not (= (cdr (cdr (children (car null)))) (cdr (children (car null))))))
(assert (not (= (cdr (cdr (children (car null)))) (children (car null)))))
(assert (not (= (cdr (cdr (children (car null)))) null)))
(assert (not (= (car (cdr (cdr (children (car null))))) (car null))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car null)))))
   (cdr (cdr (children (car null)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car null))))) (cdr (children (car null))))))
(assert
 (not (= (cdr (cdr (cdr (children (car null))))) (children (car null)))))
(assert (not (= (cdr (cdr (cdr (children (car null))))) null)))
(assert (not (= (pred (data (car null))) (data (car null)))))
(assert (not (= (pred (pred (data (car null)))) (pred (data (car null))))))
(assert (not (= (pred (pred (data (car null)))) (data (car null)))))
(assert
 (not
  (= (pred (pred (pred (data (car null))))) (pred (pred (data (car null)))))))
(assert
 (not (= (pred (pred (pred (data (car null))))) (pred (data (car null))))))
(assert (not (= (pred (pred (pred (data (car null))))) (data (car null)))))
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
 (not (= (cdr (children (car (cdr null)))) (children (car (cdr null))))))
(assert (not (= (cdr (children (car (cdr null)))) (cdr null))))
(assert (not (= (cdr (children (car (cdr null)))) null)))
(assert (not (= (car (cdr (children (car (cdr null))))) (car (cdr null)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr null)))))
   (cdr (children (car (cdr null)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr null))))) (children (car (cdr null))))))
(assert (not (= (cdr (cdr (children (car (cdr null))))) (cdr null))))
(assert (not (= (cdr (cdr (children (car (cdr null))))) null)))
(assert (not (= (pred (data (car (cdr null)))) (data (car (cdr null))))))
(assert
 (not
  (= (pred (pred (data (car (cdr null))))) (pred (data (car (cdr null)))))))
(assert
 (not (= (pred (pred (data (car (cdr null))))) (data (car (cdr null))))))
(assert (not (= (cdr (cdr null)) (cdr null))))
(assert (not (= (cdr (cdr null)) null)))
(assert (not (= (children (car (cdr (cdr null)))) (cdr (cdr null)))))
(assert (not (= (children (car (cdr (cdr null)))) (cdr null))))
(assert (not (= (children (car (cdr (cdr null)))) null)))
(assert
 (not (= (car (children (car (cdr (cdr null))))) (car (cdr (cdr null))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr null)))))
   (children (car (cdr (cdr null)))))))
(assert (not (= (cdr (children (car (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (cdr (children (car (cdr (cdr null))))) (cdr null))))
(assert (not (= (cdr (children (car (cdr (cdr null))))) null)))
(assert
 (not (= (pred (data (car (cdr (cdr null))))) (data (car (cdr (cdr null)))))))
(assert (not (= (cdr (cdr (cdr null))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr null))) (cdr null))))
(assert (not (= (cdr (cdr (cdr null))) null)))
(assert
 (not (= (children (car (cdr (cdr (cdr null))))) (cdr (cdr (cdr null))))))
(assert (not (= (children (car (cdr (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (children (car (cdr (cdr (cdr null))))) (cdr null))))
(assert (not (= (children (car (cdr (cdr (cdr null))))) null)))
(assert (not (= (cdr (cdr (cdr (cdr null)))) (cdr (cdr (cdr null))))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr null)))) null)))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr (cdr (cdr null)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr (cdr null))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) null)))
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
  (= (children (car (children (car (children contrived_variable8)))))
   (children (car (children contrived_variable8))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable8)))))
   (children contrived_variable8))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable8))))))
   (car (children (car (children contrived_variable8)))))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable8))))))
   (car (children contrived_variable8)))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable8))))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable8))))))
   (children (car (children (car (children contrived_variable8))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable8))))))
   (children (car (children contrived_variable8))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (pred (data (car (children (car (children contrived_variable8))))))
   (data (car (children (car (children contrived_variable8))))))))
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
  (= (car (cdr (children (car (children contrived_variable8)))))
   (car (children contrived_variable8)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable8))))))
   (cdr (children (car (children contrived_variable8)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable8))))))
   (children (car (children contrived_variable8))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable8)))))
   (cdr (children (car (children contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable8)))))
   (children (car (children contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable8)))))
   (children contrived_variable8))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable8))))))
   (car (children contrived_variable8)))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable8))))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable8))))))
   (cdr (cdr (children (car (children contrived_variable8))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable8))))))
   (cdr (children (car (children contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable8))))))
   (children (car (children contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (pred (data (car (children contrived_variable8))))
   (data (car (children contrived_variable8))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable8)))))
   (pred (data (car (children contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable8)))))
   (data (car (children contrived_variable8))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable8))))))
   (pred (pred (data (car (children contrived_variable8))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable8))))))
   (pred (data (car (children contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable8))))))
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
  (= (car (children (car (cdr (children contrived_variable8)))))
   (car (cdr (children contrived_variable8))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable8))))))
   (children (car (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable8))))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable8)))))
   (children (car (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable8)))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable8)))))
   (children contrived_variable8))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable8))))))
   (car (cdr (children contrived_variable8))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable8))))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable8))))))
   (cdr (children (car (cdr (children contrived_variable8))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable8))))))
   (children (car (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable8))))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable8)))))
   (data (car (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable8))))))
   (pred (data (car (cdr (children contrived_variable8))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable8))))))
   (data (car (cdr (children contrived_variable8)))))))
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
  (= (children (car (cdr (cdr (children contrived_variable8)))))
   (cdr (cdr (children contrived_variable8))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable8)))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable8)))))
   (children contrived_variable8))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable8))))))
   (car (cdr (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable8))))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable8))))))
   (children (car (cdr (cdr (children contrived_variable8))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable8))))))
   (cdr (cdr (children contrived_variable8))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable8))))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children contrived_variable8))))))
   (data (car (cdr (cdr (children contrived_variable8))))))))
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
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (cdr (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (cdr (children contrived_variable8))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable8))))))
   (children contrived_variable8))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable8)))))
   (cdr (cdr (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable8)))))
   (cdr (cdr (children contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable8)))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable8)))))
   (children contrived_variable8))))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children contrived_variable8))))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (cdr (cdr (cdr (children contrived_variable8))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (cdr (cdr (children contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (cdr (children contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable8))))))
   (cdr (children contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable8))))))
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
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable8)))))
   (pred (pred (pred (data contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable8)))))
   (pred (pred (data contrived_variable8))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable8)))))
   (pred (data contrived_variable8)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable8)))))
   (data contrived_variable8))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable8))))))
   (pred (pred (pred (pred (data contrived_variable8))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable8))))))
   (pred (pred (pred (data contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable8))))))
   (pred (pred (data contrived_variable8))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable8))))))
   (pred (data contrived_variable8)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable8))))))
   (data contrived_variable8))))
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
(assert (not (= (car (children contrived_variable1)) contrived_variable1)))
(assert
 (not
  (= (children (car (children contrived_variable1)))
   (children contrived_variable1))))
(assert
 (not
  (= (car (children (car (children contrived_variable1))))
   (car (children contrived_variable1)))))
(assert
 (not
  (= (car (children (car (children contrived_variable1))))
   contrived_variable1)))
(assert
 (not
  (= (children (car (children (car (children contrived_variable1)))))
   (children (car (children contrived_variable1))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable1)))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable1))))))
   (car (children (car (children contrived_variable1)))))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable1))))))
   (car (children contrived_variable1)))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable1))))))
   (children (car (children (car (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable1))))))
   (children (car (children contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (pred (data (car (children (car (children contrived_variable1))))))
   (data (car (children (car (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable1))))
   (children (car (children contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable1))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable1)))))
   (car (children contrived_variable1)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable1))))))
   (cdr (children (car (children contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable1))))))
   (children (car (children contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable1)))))
   (cdr (children (car (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable1)))))
   (children (car (children contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable1)))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable1))))))
   (car (children contrived_variable1)))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable1))))))
   (cdr (cdr (children (car (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable1))))))
   (cdr (children (car (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable1))))))
   (children (car (children contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (pred (data (car (children contrived_variable1))))
   (data (car (children contrived_variable1))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable1)))))
   (pred (data (car (children contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable1)))))
   (data (car (children contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable1))))))
   (pred (pred (data (car (children contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable1))))))
   (pred (data (car (children contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable1))))))
   (data (car (children contrived_variable1))))))
(assert
 (not (= (cdr (children contrived_variable1)) (children contrived_variable1))))
(assert
 (not (= (car (cdr (children contrived_variable1))) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable1))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable1))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable1)))))
   (car (cdr (children contrived_variable1))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable1))))))
   (children (car (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable1))))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable1)))))
   (children (car (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable1)))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable1)))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable1))))))
   (car (cdr (children contrived_variable1))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable1))))))
   (cdr (children (car (cdr (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable1))))))
   (children (car (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable1))))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable1)))))
   (data (car (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable1))))))
   (pred (data (car (cdr (children contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable1))))))
   (data (car (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable1)))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable1)))
   (children contrived_variable1))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable1)))) contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable1)))))
   (cdr (cdr (children contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable1)))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable1)))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable1))))))
   (car (cdr (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable1))))))
   (children (car (cdr (cdr (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable1))))))
   (cdr (cdr (children contrived_variable1))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable1))))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children contrived_variable1))))))
   (data (car (cdr (cdr (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable1))))
   (cdr (cdr (children contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable1))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable1))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable1)))))
   contrived_variable1)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (cdr (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (cdr (children contrived_variable1))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable1)))))
   (cdr (cdr (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable1)))))
   (cdr (cdr (children contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable1)))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable1)))))
   (children contrived_variable1))))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children contrived_variable1))))))
   contrived_variable1)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (cdr (cdr (cdr (children contrived_variable1))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (cdr (cdr (children contrived_variable1)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (cdr (children contrived_variable1))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable1))))))
   (cdr (children contrived_variable1)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable1))))))
   (children contrived_variable1))))
(assert
 (not (= (pred (data contrived_variable1)) (data contrived_variable1))))
(assert
 (not
  (= (pred (pred (data contrived_variable1)))
   (pred (data contrived_variable1)))))
(assert
 (not (= (pred (pred (data contrived_variable1))) (data contrived_variable1))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable1))))
   (pred (pred (data contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable1))))
   (pred (data contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable1))))
   (data contrived_variable1))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable1)))))
   (pred (pred (pred (data contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable1)))))
   (pred (pred (data contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable1)))))
   (pred (data contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable1)))))
   (data contrived_variable1))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable1))))))
   (pred (pred (pred (pred (data contrived_variable1))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable1))))))
   (pred (pred (pred (data contrived_variable1)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable1))))))
   (pred (pred (data contrived_variable1))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable1))))))
   (pred (data contrived_variable1)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable1))))))
   (data contrived_variable1))))
(assert (not (= (car (children contrived_variable6)) contrived_variable6)))
(assert
 (not
  (= (children (car (children contrived_variable6)))
   (children contrived_variable6))))
(assert
 (not
  (= (car (children (car (children contrived_variable6))))
   (car (children contrived_variable6)))))
(assert
 (not
  (= (car (children (car (children contrived_variable6))))
   contrived_variable6)))
(assert
 (not
  (= (children (car (children (car (children contrived_variable6)))))
   (children (car (children contrived_variable6))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable6)))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable6))))))
   (car (children (car (children contrived_variable6)))))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable6))))))
   (car (children contrived_variable6)))))
(assert
 (not
  (= (car (children (car (children (car (children contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable6))))))
   (children (car (children (car (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable6))))))
   (children (car (children contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (children (car (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (pred (data (car (children (car (children contrived_variable6))))))
   (data (car (children (car (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable6))))
   (children (car (children contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable6))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable6)))))
   (car (children contrived_variable6)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable6))))))
   (cdr (children (car (children contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable6))))))
   (children (car (children contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (children (car (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable6)))))
   (cdr (children (car (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable6)))))
   (children (car (children contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable6)))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable6))))))
   (car (children contrived_variable6)))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable6))))))
   (cdr (cdr (children (car (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable6))))))
   (cdr (children (car (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable6))))))
   (children (car (children contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (pred (data (car (children contrived_variable6))))
   (data (car (children contrived_variable6))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable6)))))
   (pred (data (car (children contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable6)))))
   (data (car (children contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable6))))))
   (pred (pred (data (car (children contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable6))))))
   (pred (data (car (children contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children contrived_variable6))))))
   (data (car (children contrived_variable6))))))
(assert
 (not (= (cdr (children contrived_variable6)) (children contrived_variable6))))
(assert
 (not (= (car (cdr (children contrived_variable6))) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable6))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable6))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable6)))))
   (car (cdr (children contrived_variable6))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable6))))))
   (children (car (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable6))))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (children (car (children (car (cdr (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable6)))))
   (children (car (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable6)))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable6)))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable6))))))
   (car (cdr (children contrived_variable6))))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable6))))))
   (cdr (children (car (cdr (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable6))))))
   (children (car (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable6))))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable6)))))
   (data (car (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable6))))))
   (pred (data (car (cdr (children contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children contrived_variable6))))))
   (data (car (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable6)))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable6)))
   (children contrived_variable6))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable6)))) contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable6)))))
   (cdr (cdr (children contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable6)))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable6)))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable6))))))
   (car (cdr (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable6))))))
   (children (car (cdr (cdr (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable6))))))
   (cdr (cdr (children contrived_variable6))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable6))))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children contrived_variable6))))))
   (data (car (cdr (cdr (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable6))))
   (cdr (cdr (children contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable6))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable6))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable6)))))
   contrived_variable6)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (cdr (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (cdr (children contrived_variable6))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable6)))))
   (cdr (cdr (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable6)))))
   (cdr (cdr (children contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable6)))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable6)))))
   (children contrived_variable6))))
(assert
 (not
  (= (car (cdr (cdr (cdr (cdr (children contrived_variable6))))))
   contrived_variable6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (cdr (cdr (cdr (children contrived_variable6))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (cdr (cdr (children contrived_variable6)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (cdr (children contrived_variable6))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable6))))))
   (cdr (children contrived_variable6)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children contrived_variable6))))))
   (children contrived_variable6))))
(assert
 (not (= (pred (data contrived_variable6)) (data contrived_variable6))))
(assert
 (not
  (= (pred (pred (data contrived_variable6)))
   (pred (data contrived_variable6)))))
(assert
 (not (= (pred (pred (data contrived_variable6))) (data contrived_variable6))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable6))))
   (pred (pred (data contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable6))))
   (pred (data contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable6))))
   (data contrived_variable6))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable6)))))
   (pred (pred (pred (data contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable6)))))
   (pred (pred (data contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable6)))))
   (pred (data contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable6)))))
   (data contrived_variable6))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable6))))))
   (pred (pred (pred (pred (data contrived_variable6))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable6))))))
   (pred (pred (pred (data contrived_variable6)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable6))))))
   (pred (pred (data contrived_variable6))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable6))))))
   (pred (data contrived_variable6)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data contrived_variable6))))))
   (data contrived_variable6))))
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
(assert (not (= (car (children x3)) x3)))
(assert (not (= (children (car (children x3))) (children x3))))
(assert (not (= (car (children (car (children x3)))) (car (children x3)))))
(assert (not (= (car (children (car (children x3)))) x3)))
(assert
 (not
  (= (children (car (children (car (children x3)))))
   (children (car (children x3))))))
(assert
 (not (= (children (car (children (car (children x3))))) (children x3))))
(assert
 (not
  (= (car (children (car (children (car (children x3))))))
   (car (children (car (children x3)))))))
(assert
 (not
  (= (car (children (car (children (car (children x3))))))
   (car (children x3)))))
(assert (not (= (car (children (car (children (car (children x3)))))) x3)))
(assert
 (not
  (= (cdr (children (car (children (car (children x3))))))
   (children (car (children (car (children x3))))))))
(assert
 (not
  (= (cdr (children (car (children (car (children x3))))))
   (children (car (children x3))))))
(assert
 (not (= (cdr (children (car (children (car (children x3)))))) (children x3))))
(assert
 (not
  (= (pred (data (car (children (car (children x3))))))
   (data (car (children (car (children x3))))))))
(assert
 (not (= (cdr (children (car (children x3)))) (children (car (children x3))))))
(assert (not (= (cdr (children (car (children x3)))) (children x3))))
(assert
 (not (= (car (cdr (children (car (children x3))))) (car (children x3)))))
(assert (not (= (car (cdr (children (car (children x3))))) x3)))
(assert
 (not
  (= (children (car (cdr (children (car (children x3))))))
   (cdr (children (car (children x3)))))))
(assert
 (not
  (= (children (car (cdr (children (car (children x3))))))
   (children (car (children x3))))))
(assert
 (not (= (children (car (cdr (children (car (children x3)))))) (children x3))))
(assert
 (not
  (= (cdr (cdr (children (car (children x3)))))
   (cdr (children (car (children x3)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x3)))))
   (children (car (children x3))))))
(assert (not (= (cdr (cdr (children (car (children x3))))) (children x3))))
(assert
 (not
  (= (car (cdr (cdr (children (car (children x3)))))) (car (children x3)))))
(assert (not (= (car (cdr (cdr (children (car (children x3)))))) x3)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x3))))))
   (cdr (cdr (children (car (children x3))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x3))))))
   (cdr (children (car (children x3)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (children x3))))))
   (children (car (children x3))))))
(assert
 (not (= (cdr (cdr (cdr (children (car (children x3)))))) (children x3))))
(assert
 (not (= (pred (data (car (children x3)))) (data (car (children x3))))))
(assert
 (not
  (= (pred (pred (data (car (children x3)))))
   (pred (data (car (children x3)))))))
(assert
 (not (= (pred (pred (data (car (children x3))))) (data (car (children x3))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x3))))))
   (pred (pred (data (car (children x3))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x3))))))
   (pred (data (car (children x3)))))))
(assert
 (not
  (= (pred (pred (pred (data (car (children x3))))))
   (data (car (children x3))))))
(assert (not (= (cdr (children x3)) (children x3))))
(assert (not (= (car (cdr (children x3))) x3)))
(assert (not (= (children (car (cdr (children x3)))) (cdr (children x3)))))
(assert (not (= (children (car (cdr (children x3)))) (children x3))))
(assert
 (not
  (= (car (children (car (cdr (children x3))))) (car (cdr (children x3))))))
(assert (not (= (car (children (car (cdr (children x3))))) x3)))
(assert
 (not
  (= (children (car (children (car (cdr (children x3))))))
   (children (car (cdr (children x3)))))))
(assert
 (not
  (= (children (car (children (car (cdr (children x3))))))
   (cdr (children x3)))))
(assert
 (not (= (children (car (children (car (cdr (children x3)))))) (children x3))))
(assert
 (not
  (= (cdr (children (car (cdr (children x3)))))
   (children (car (cdr (children x3)))))))
(assert
 (not (= (cdr (children (car (cdr (children x3))))) (cdr (children x3)))))
(assert (not (= (cdr (children (car (cdr (children x3))))) (children x3))))
(assert
 (not
  (= (car (cdr (children (car (cdr (children x3))))))
   (car (cdr (children x3))))))
(assert (not (= (car (cdr (children (car (cdr (children x3)))))) x3)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x3))))))
   (cdr (children (car (cdr (children x3))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x3))))))
   (children (car (cdr (children x3)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (children x3)))))) (cdr (children x3)))))
(assert
 (not (= (cdr (cdr (children (car (cdr (children x3)))))) (children x3))))
(assert
 (not
  (= (pred (data (car (cdr (children x3))))) (data (car (cdr (children x3)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x3))))))
   (pred (data (car (cdr (children x3))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (children x3))))))
   (data (car (cdr (children x3)))))))
(assert (not (= (cdr (cdr (children x3))) (cdr (children x3)))))
(assert (not (= (cdr (cdr (children x3))) (children x3))))
(assert (not (= (car (cdr (cdr (children x3)))) x3)))
(assert
 (not
  (= (children (car (cdr (cdr (children x3))))) (cdr (cdr (children x3))))))
(assert
 (not (= (children (car (cdr (cdr (children x3))))) (cdr (children x3)))))
(assert (not (= (children (car (cdr (cdr (children x3))))) (children x3))))
(assert
 (not
  (= (car (children (car (cdr (cdr (children x3))))))
   (car (cdr (cdr (children x3)))))))
(assert (not (= (car (children (car (cdr (cdr (children x3)))))) x3)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x3))))))
   (children (car (cdr (cdr (children x3))))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x3))))))
   (cdr (cdr (children x3))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (children x3)))))) (cdr (children x3)))))
(assert
 (not (= (cdr (children (car (cdr (cdr (children x3)))))) (children x3))))
(assert
 (not
  (= (pred (data (car (cdr (cdr (children x3))))))
   (data (car (cdr (cdr (children x3))))))))
(assert (not (= (cdr (cdr (cdr (children x3)))) (cdr (cdr (children x3))))))
(assert (not (= (cdr (cdr (cdr (children x3)))) (cdr (children x3)))))
(assert (not (= (cdr (cdr (cdr (children x3)))) (children x3))))
(assert (not (= (car (cdr (cdr (cdr (children x3))))) x3)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x3))))))
   (cdr (cdr (cdr (children x3)))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x3))))))
   (cdr (cdr (children x3))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (children x3)))))) (cdr (children x3)))))
(assert
 (not (= (children (car (cdr (cdr (cdr (children x3)))))) (children x3))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x3))))) (cdr (cdr (cdr (children x3)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x3))))) (cdr (cdr (children x3))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x3))))) (cdr (children x3)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x3))))) (children x3))))
(assert (not (= (car (cdr (cdr (cdr (cdr (children x3)))))) x3)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x3))))))
   (cdr (cdr (cdr (cdr (children x3))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x3))))))
   (cdr (cdr (cdr (children x3)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (children x3)))))) (cdr (cdr (children x3))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (children x3)))))) (cdr (children x3)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (children x3)))))) (children x3))))
(assert (not (= (pred (data x3)) (data x3))))
(assert (not (= (pred (pred (data x3))) (pred (data x3)))))
(assert (not (= (pred (pred (data x3))) (data x3))))
(assert (not (= (pred (pred (pred (data x3)))) (pred (pred (data x3))))))
(assert (not (= (pred (pred (pred (data x3)))) (pred (data x3)))))
(assert (not (= (pred (pred (pred (data x3)))) (data x3))))
(assert
 (not
  (= (pred (pred (pred (pred (data x3))))) (pred (pred (pred (data x3)))))))
(assert
 (not (= (pred (pred (pred (pred (data x3))))) (pred (pred (data x3))))))
(assert (not (= (pred (pred (pred (pred (data x3))))) (pred (data x3)))))
(assert (not (= (pred (pred (pred (pred (data x3))))) (data x3))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x3))))))
   (pred (pred (pred (pred (data x3))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x3))))))
   (pred (pred (pred (data x3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (data x3)))))) (pred (pred (data x3))))))
(assert
 (not (= (pred (pred (pred (pred (pred (data x3)))))) (pred (data x3)))))
(assert (not (= (pred (pred (pred (pred (pred (data x3)))))) (data x3))))
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
(check-sat)

