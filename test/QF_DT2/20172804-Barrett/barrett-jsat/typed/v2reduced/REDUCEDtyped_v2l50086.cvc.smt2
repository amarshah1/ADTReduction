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
(declare-fun x3 () list)
(declare-fun x4 () list)
(declare-fun x5 () tree)
(declare-fun x6 () tree)
(declare-fun contrived_variable3 () nat)
(declare-fun contrived_variable5 () list)
(declare-fun contrived_variable1 () tree)
(declare-fun contrived_variable0 () tree)
(declare-fun contrived_variable4 () nat)
(declare-fun contrived_variable2 () nat)
(declare-fun contrived_variable6 () nat)
(declare-fun contrived_variable7 () tree)
(declare-fun contrived_variable8 () list)
(assert (is-zero zero))
(assert (is-null null))
(assert
 (and (and (and (and (= contrived_variable1 contrived_variable0)
  (not ((_ is succ) contrived_variable2)))
  (not ((_ is zero) contrived_variable4))) ((_ is null) contrived_variable5))
  (= x6 x5)))
(assert
 (and (= (leaf x1) contrived_variable1) (is-leaf contrived_variable1)
  (= (data contrived_variable1) x1)))
(assert
 (and (= (node x4) contrived_variable0) (is-node contrived_variable0)
  (= (children contrived_variable0) x4)))
(assert
 (and (= (succ zero) contrived_variable4) (is-succ contrived_variable4)
  (= (pred contrived_variable4) zero)))
(assert
 (and (= (succ contrived_variable3) contrived_variable2)
  (is-succ contrived_variable2)
  (= (pred contrived_variable2) contrived_variable3)))
(assert
 (or
  (and ((_ is succ) x2) (and (= (pred x2) contrived_variable3)
   (= (succ contrived_variable6) x2) (= (pred x2) contrived_variable6)))
  (and (not ((_ is succ) x2)) (= contrived_variable3 zero))))
(assert
 (or
  (and (is-cons x3) (and (= (cdr x3) contrived_variable5)
   (= (cons contrived_variable7 contrived_variable8) x3)
   (= (car x3) contrived_variable7) (= (cdr x3) contrived_variable8)))
  (and (not (is-cons x3)) (= contrived_variable5 null))))
(assert
 (or (and (is-cons contrived_variable8) (not (is-null contrived_variable8)))
  (and (not (is-cons contrived_variable8)) (is-null contrived_variable8))))
(assert (=> (is-null contrived_variable8) (= contrived_variable8 null)))
(assert
 (or (and (is-cons contrived_variable5) (not (is-null contrived_variable5)))
  (and (not (is-cons contrived_variable5)) (is-null contrived_variable5))))
(assert (=> (is-null contrived_variable5) (= contrived_variable5 null)))
(assert
 (or (and (is-cons x4) (not (is-null x4)))
  (and (not (is-cons x4)) (is-null x4))))
(assert (=> (is-null x4) (= x4 null)))
(assert
 (or (and (is-cons x3) (not (is-null x3)))
  (and (not (is-cons x3)) (is-null x3))))
(assert (=> (is-null x3) (= x3 null)))
(assert
 (or (and (is-cons null) (not (is-null null)))
  (and (not (is-cons null)) (is-null null))))
(assert (=> (is-null null) (= null null)))
(assert
 (or (and (is-node contrived_variable7) (not (is-leaf contrived_variable7)))
  (and (not (is-node contrived_variable7)) (is-leaf contrived_variable7))))
(assert
 (or (and (is-node contrived_variable0) (not (is-leaf contrived_variable0)))
  (and (not (is-node contrived_variable0)) (is-leaf contrived_variable0))))
(assert
 (or (and (is-node contrived_variable1) (not (is-leaf contrived_variable1)))
  (and (not (is-node contrived_variable1)) (is-leaf contrived_variable1))))
(assert
 (or (and (is-node x6) (not (is-leaf x6)))
  (and (not (is-node x6)) (is-leaf x6))))
(assert
 (or (and (is-node x5) (not (is-leaf x5)))
  (and (not (is-node x5)) (is-leaf x5))))
(assert
 (or (and (is-succ contrived_variable6) (not (is-zero contrived_variable6)))
  (and (not (is-succ contrived_variable6)) (is-zero contrived_variable6))))
(assert (=> (is-zero contrived_variable6) (= contrived_variable6 zero)))
(assert
 (or (and (is-succ contrived_variable2) (not (is-zero contrived_variable2)))
  (and (not (is-succ contrived_variable2)) (is-zero contrived_variable2))))
(assert (=> (is-zero contrived_variable2) (= contrived_variable2 zero)))
(assert
 (or (and (is-succ contrived_variable4) (not (is-zero contrived_variable4)))
  (and (not (is-succ contrived_variable4)) (is-zero contrived_variable4))))
(assert (=> (is-zero contrived_variable4) (= contrived_variable4 zero)))
(assert
 (or (and (is-succ contrived_variable3) (not (is-zero contrived_variable3)))
  (and (not (is-succ contrived_variable3)) (is-zero contrived_variable3))))
(assert (=> (is-zero contrived_variable3) (= contrived_variable3 zero)))
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
(assert (not (= (children (car contrived_variable8)) contrived_variable8)))
(assert
 (not
  (= (car (children (car contrived_variable8))) (car contrived_variable8))))
(assert
 (not
  (= (children (car (children (car contrived_variable8))))
   (children (car contrived_variable8)))))
(assert
 (not
  (= (children (car (children (car contrived_variable8))))
   contrived_variable8)))
(assert
 (not
  (= (car (children (car (children (car contrived_variable8)))))
   (car (children (car contrived_variable8))))))
(assert
 (not
  (= (car (children (car (children (car contrived_variable8)))))
   (car contrived_variable8))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable8)))))
   (children (car (children (car contrived_variable8)))))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable8)))))
   (children (car contrived_variable8)))))
(assert
 (not
  (= (cdr (children (car (children (car contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (pred (data (car (children (car contrived_variable8)))))
   (data (car (children (car contrived_variable8)))))))
(assert
 (not
  (= (cdr (children (car contrived_variable8)))
   (children (car contrived_variable8)))))
(assert
 (not (= (cdr (children (car contrived_variable8))) contrived_variable8)))
(assert
 (not
  (= (car (cdr (children (car contrived_variable8))))
   (car contrived_variable8))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable8)))))
   (cdr (children (car contrived_variable8))))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable8)))))
   (children (car contrived_variable8)))))
(assert
 (not
  (= (children (car (cdr (children (car contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable8))))
   (cdr (children (car contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable8))))
   (children (car contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (children (car contrived_variable8)))) contrived_variable8)))
(assert
 (not
  (= (car (cdr (cdr (children (car contrived_variable8)))))
   (car contrived_variable8))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable8)))))
   (cdr (cdr (children (car contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable8)))))
   (cdr (children (car contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable8)))))
   (children (car contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (pred (data (car contrived_variable8))) (data (car contrived_variable8)))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable8))))
   (pred (data (car contrived_variable8))))))
(assert
 (not
  (= (pred (pred (data (car contrived_variable8))))
   (data (car contrived_variable8)))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable8)))))
   (pred (pred (data (car contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable8)))))
   (pred (data (car contrived_variable8))))))
(assert
 (not
  (= (pred (pred (pred (data (car contrived_variable8)))))
   (data (car contrived_variable8)))))
(assert (not (= (cdr contrived_variable8) contrived_variable8)))
(assert
 (not
  (= (children (car (cdr contrived_variable8))) (cdr contrived_variable8))))
(assert
 (not (= (children (car (cdr contrived_variable8))) contrived_variable8)))
(assert
 (not
  (= (car (children (car (cdr contrived_variable8))))
   (car (cdr contrived_variable8)))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable8)))))
   (children (car (cdr contrived_variable8))))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable8)))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (children (car (children (car (cdr contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable8))))
   (children (car (cdr contrived_variable8))))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable8))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (cdr (children (car (cdr contrived_variable8)))) contrived_variable8)))
(assert
 (not
  (= (car (cdr (children (car (cdr contrived_variable8)))))
   (car (cdr contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable8)))))
   (cdr (children (car (cdr contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable8)))))
   (children (car (cdr contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable8)))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (pred (data (car (cdr contrived_variable8))))
   (data (car (cdr contrived_variable8))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable8)))))
   (pred (data (car (cdr contrived_variable8)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr contrived_variable8)))))
   (data (car (cdr contrived_variable8))))))
(assert (not (= (cdr (cdr contrived_variable8)) (cdr contrived_variable8))))
(assert (not (= (cdr (cdr contrived_variable8)) contrived_variable8)))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable8))))
   (cdr (cdr contrived_variable8)))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable8))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (children (car (cdr (cdr contrived_variable8)))) contrived_variable8)))
(assert
 (not
  (= (car (children (car (cdr (cdr contrived_variable8)))))
   (car (cdr (cdr contrived_variable8))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable8)))))
   (children (car (cdr (cdr contrived_variable8)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable8)))))
   (cdr (cdr contrived_variable8)))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable8)))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (pred (data (car (cdr (cdr contrived_variable8)))))
   (data (car (cdr (cdr contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (cdr contrived_variable8))) (cdr (cdr contrived_variable8)))))
(assert
 (not (= (cdr (cdr (cdr contrived_variable8))) (cdr contrived_variable8))))
(assert (not (= (cdr (cdr (cdr contrived_variable8))) contrived_variable8)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable8)))))
   (cdr (cdr (cdr contrived_variable8))))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable8)))))
   (cdr (cdr contrived_variable8)))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable8)))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (children (car (cdr (cdr (cdr contrived_variable8)))))
   contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable8))))
   (cdr (cdr (cdr contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable8))))
   (cdr (cdr contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr contrived_variable8)))) (cdr contrived_variable8))))
(assert
 (not (= (cdr (cdr (cdr (cdr contrived_variable8)))) contrived_variable8)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable8)))))
   (cdr (cdr (cdr (cdr contrived_variable8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable8)))))
   (cdr (cdr (cdr contrived_variable8))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable8)))))
   (cdr (cdr contrived_variable8)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable8)))))
   (cdr contrived_variable8))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr contrived_variable8))))) contrived_variable8)))
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
  (= (cdr (children (car (children (car x4)))))
   (children (car (children (car x4)))))))
(assert
 (not (= (cdr (children (car (children (car x4))))) (children (car x4)))))
(assert (not (= (cdr (children (car (children (car x4))))) x4)))
(assert
 (not
  (= (pred (data (car (children (car x4))))) (data (car (children (car x4)))))))
(assert (not (= (cdr (children (car x4))) (children (car x4)))))
(assert (not (= (cdr (children (car x4))) x4)))
(assert (not (= (car (cdr (children (car x4)))) (car x4))))
(assert
 (not
  (= (children (car (cdr (children (car x4))))) (cdr (children (car x4))))))
(assert
 (not (= (children (car (cdr (children (car x4))))) (children (car x4)))))
(assert (not (= (children (car (cdr (children (car x4))))) x4)))
(assert (not (= (cdr (cdr (children (car x4)))) (cdr (children (car x4))))))
(assert (not (= (cdr (cdr (children (car x4)))) (children (car x4)))))
(assert (not (= (cdr (cdr (children (car x4)))) x4)))
(assert (not (= (car (cdr (cdr (children (car x4))))) (car x4))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x4))))) (cdr (cdr (children (car x4)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x4))))) (cdr (children (car x4))))))
(assert (not (= (cdr (cdr (cdr (children (car x4))))) (children (car x4)))))
(assert (not (= (cdr (cdr (cdr (children (car x4))))) x4)))
(assert (not (= (pred (data (car x4))) (data (car x4)))))
(assert (not (= (pred (pred (data (car x4)))) (pred (data (car x4))))))
(assert (not (= (pred (pred (data (car x4)))) (data (car x4)))))
(assert
 (not (= (pred (pred (pred (data (car x4))))) (pred (pred (data (car x4)))))))
(assert (not (= (pred (pred (pred (data (car x4))))) (pred (data (car x4))))))
(assert (not (= (pred (pred (pred (data (car x4))))) (data (car x4)))))
(assert (not (= (cdr x4) x4)))
(assert (not (= (children (car (cdr x4))) (cdr x4))))
(assert (not (= (children (car (cdr x4))) x4)))
(assert (not (= (car (children (car (cdr x4)))) (car (cdr x4)))))
(assert
 (not
  (= (children (car (children (car (cdr x4))))) (children (car (cdr x4))))))
(assert (not (= (children (car (children (car (cdr x4))))) (cdr x4))))
(assert (not (= (children (car (children (car (cdr x4))))) x4)))
(assert (not (= (cdr (children (car (cdr x4)))) (children (car (cdr x4))))))
(assert (not (= (cdr (children (car (cdr x4)))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr x4)))) x4)))
(assert (not (= (car (cdr (children (car (cdr x4))))) (car (cdr x4)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x4))))) (cdr (children (car (cdr x4)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x4))))) (children (car (cdr x4))))))
(assert (not (= (cdr (cdr (children (car (cdr x4))))) (cdr x4))))
(assert (not (= (cdr (cdr (children (car (cdr x4))))) x4)))
(assert (not (= (pred (data (car (cdr x4)))) (data (car (cdr x4))))))
(assert
 (not (= (pred (pred (data (car (cdr x4))))) (pred (data (car (cdr x4)))))))
(assert (not (= (pred (pred (data (car (cdr x4))))) (data (car (cdr x4))))))
(assert (not (= (cdr (cdr x4)) (cdr x4))))
(assert (not (= (cdr (cdr x4)) x4)))
(assert (not (= (children (car (cdr (cdr x4)))) (cdr (cdr x4)))))
(assert (not (= (children (car (cdr (cdr x4)))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr x4)))) x4)))
(assert (not (= (car (children (car (cdr (cdr x4))))) (car (cdr (cdr x4))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x4))))) (children (car (cdr (cdr x4)))))))
(assert (not (= (cdr (children (car (cdr (cdr x4))))) (cdr (cdr x4)))))
(assert (not (= (cdr (children (car (cdr (cdr x4))))) (cdr x4))))
(assert (not (= (cdr (children (car (cdr (cdr x4))))) x4)))
(assert
 (not (= (pred (data (car (cdr (cdr x4))))) (data (car (cdr (cdr x4)))))))
(assert (not (= (cdr (cdr (cdr x4))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr x4))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr x4))) x4)))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) (cdr (cdr (cdr x4))))))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) (cdr (cdr x4)))))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) (cdr x4))))
(assert (not (= (children (car (cdr (cdr (cdr x4))))) x4)))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr x4)))) x4)))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr (cdr (cdr (cdr x4)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr (cdr (cdr x4))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x4))))) x4)))
(assert (not (= (children (car x3)) x3)))
(assert (not (= (car (children (car x3))) (car x3))))
(assert (not (= (children (car (children (car x3)))) (children (car x3)))))
(assert (not (= (children (car (children (car x3)))) x3)))
(assert
 (not
  (= (car (children (car (children (car x3))))) (car (children (car x3))))))
(assert (not (= (car (children (car (children (car x3))))) (car x3))))
(assert
 (not
  (= (cdr (children (car (children (car x3)))))
   (children (car (children (car x3)))))))
(assert
 (not (= (cdr (children (car (children (car x3))))) (children (car x3)))))
(assert (not (= (cdr (children (car (children (car x3))))) x3)))
(assert
 (not
  (= (pred (data (car (children (car x3))))) (data (car (children (car x3)))))))
(assert (not (= (cdr (children (car x3))) (children (car x3)))))
(assert (not (= (cdr (children (car x3))) x3)))
(assert (not (= (car (cdr (children (car x3)))) (car x3))))
(assert
 (not
  (= (children (car (cdr (children (car x3))))) (cdr (children (car x3))))))
(assert
 (not (= (children (car (cdr (children (car x3))))) (children (car x3)))))
(assert (not (= (children (car (cdr (children (car x3))))) x3)))
(assert (not (= (cdr (cdr (children (car x3)))) (cdr (children (car x3))))))
(assert (not (= (cdr (cdr (children (car x3)))) (children (car x3)))))
(assert (not (= (cdr (cdr (children (car x3)))) x3)))
(assert (not (= (car (cdr (cdr (children (car x3))))) (car x3))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x3))))) (cdr (cdr (children (car x3)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x3))))) (cdr (children (car x3))))))
(assert (not (= (cdr (cdr (cdr (children (car x3))))) (children (car x3)))))
(assert (not (= (cdr (cdr (cdr (children (car x3))))) x3)))
(assert (not (= (pred (data (car x3))) (data (car x3)))))
(assert (not (= (pred (pred (data (car x3)))) (pred (data (car x3))))))
(assert (not (= (pred (pred (data (car x3)))) (data (car x3)))))
(assert
 (not (= (pred (pred (pred (data (car x3))))) (pred (pred (data (car x3)))))))
(assert (not (= (pred (pred (pred (data (car x3))))) (pred (data (car x3))))))
(assert (not (= (pred (pred (pred (data (car x3))))) (data (car x3)))))
(assert (not (= (cdr x3) x3)))
(assert (not (= (children (car (cdr x3))) (cdr x3))))
(assert (not (= (children (car (cdr x3))) x3)))
(assert (not (= (car (children (car (cdr x3)))) (car (cdr x3)))))
(assert
 (not
  (= (children (car (children (car (cdr x3))))) (children (car (cdr x3))))))
(assert (not (= (children (car (children (car (cdr x3))))) (cdr x3))))
(assert (not (= (children (car (children (car (cdr x3))))) x3)))
(assert (not (= (cdr (children (car (cdr x3)))) (children (car (cdr x3))))))
(assert (not (= (cdr (children (car (cdr x3)))) (cdr x3))))
(assert (not (= (cdr (children (car (cdr x3)))) x3)))
(assert (not (= (car (cdr (children (car (cdr x3))))) (car (cdr x3)))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x3))))) (cdr (children (car (cdr x3)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x3))))) (children (car (cdr x3))))))
(assert (not (= (cdr (cdr (children (car (cdr x3))))) (cdr x3))))
(assert (not (= (cdr (cdr (children (car (cdr x3))))) x3)))
(assert (not (= (pred (data (car (cdr x3)))) (data (car (cdr x3))))))
(assert
 (not (= (pred (pred (data (car (cdr x3))))) (pred (data (car (cdr x3)))))))
(assert (not (= (pred (pred (data (car (cdr x3))))) (data (car (cdr x3))))))
(assert (not (= (cdr (cdr x3)) (cdr x3))))
(assert (not (= (cdr (cdr x3)) x3)))
(assert (not (= (children (car (cdr (cdr x3)))) (cdr (cdr x3)))))
(assert (not (= (children (car (cdr (cdr x3)))) (cdr x3))))
(assert (not (= (children (car (cdr (cdr x3)))) x3)))
(assert (not (= (car (children (car (cdr (cdr x3))))) (car (cdr (cdr x3))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x3))))) (children (car (cdr (cdr x3)))))))
(assert (not (= (cdr (children (car (cdr (cdr x3))))) (cdr (cdr x3)))))
(assert (not (= (cdr (children (car (cdr (cdr x3))))) (cdr x3))))
(assert (not (= (cdr (children (car (cdr (cdr x3))))) x3)))
(assert
 (not (= (pred (data (car (cdr (cdr x3))))) (data (car (cdr (cdr x3)))))))
(assert (not (= (cdr (cdr (cdr x3))) (cdr (cdr x3)))))
(assert (not (= (cdr (cdr (cdr x3))) (cdr x3))))
(assert (not (= (cdr (cdr (cdr x3))) x3)))
(assert (not (= (children (car (cdr (cdr (cdr x3))))) (cdr (cdr (cdr x3))))))
(assert (not (= (children (car (cdr (cdr (cdr x3))))) (cdr (cdr x3)))))
(assert (not (= (children (car (cdr (cdr (cdr x3))))) (cdr x3))))
(assert (not (= (children (car (cdr (cdr (cdr x3))))) x3)))
(assert (not (= (cdr (cdr (cdr (cdr x3)))) (cdr (cdr (cdr x3))))))
(assert (not (= (cdr (cdr (cdr (cdr x3)))) (cdr (cdr x3)))))
(assert (not (= (cdr (cdr (cdr (cdr x3)))) (cdr x3))))
(assert (not (= (cdr (cdr (cdr (cdr x3)))) x3)))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x3))))) (cdr (cdr (cdr (cdr x3)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x3))))) (cdr (cdr (cdr x3))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x3))))) (cdr (cdr x3)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x3))))) (cdr x3))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x3))))) x3)))
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
(assert (not (= (car (children contrived_variable7)) contrived_variable7)))
(assert
 (not
  (= (children (car (children contrived_variable7)))
   (children contrived_variable7))))
(assert
 (not
  (= (car (children (car (children contrived_variable7))))
   (car (children contrived_variable7)))))
(assert
 (not
  (= (car (children (car (children contrived_variable7))))
   contrived_variable7)))
(assert
 (not
  (= (children (car (children (car (children contrived_variable7)))))
   (children (car (children contrived_variable7))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable7)))))
   (children contrived_variable7))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable7))))
   (children (car (children contrived_variable7))))))
(assert
 (not
  (= (cdr (children (car (children contrived_variable7))))
   (children contrived_variable7))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable7)))))
   (car (children contrived_variable7)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable7)))))
   contrived_variable7)))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable7)))))
   (cdr (children (car (children contrived_variable7)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable7)))))
   (children (car (children contrived_variable7))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable7)))))
   (children contrived_variable7))))
(assert
 (not
  (= (pred (data (car (children contrived_variable7))))
   (data (car (children contrived_variable7))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable7)))))
   (pred (data (car (children contrived_variable7)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable7)))))
   (data (car (children contrived_variable7))))))
(assert
 (not (= (cdr (children contrived_variable7)) (children contrived_variable7))))
(assert
 (not (= (car (cdr (children contrived_variable7))) contrived_variable7)))
(assert
 (not
  (= (children (car (cdr (children contrived_variable7))))
   (cdr (children contrived_variable7)))))
(assert
 (not
  (= (children (car (cdr (children contrived_variable7))))
   (children contrived_variable7))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable7)))))
   (car (cdr (children contrived_variable7))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable7)))))
   contrived_variable7)))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable7)))))
   (children (car (cdr (children contrived_variable7)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable7)))))
   (cdr (children contrived_variable7)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable7)))))
   (children contrived_variable7))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable7)))))
   (data (car (cdr (children contrived_variable7)))))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable7)))
   (cdr (children contrived_variable7)))))
(assert
 (not
  (= (cdr (cdr (children contrived_variable7)))
   (children contrived_variable7))))
(assert
 (not
  (= (car (cdr (cdr (children contrived_variable7)))) contrived_variable7)))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable7)))))
   (cdr (cdr (children contrived_variable7))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable7)))))
   (cdr (children contrived_variable7)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable7)))))
   (children contrived_variable7))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable7))))
   (cdr (cdr (children contrived_variable7))))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable7))))
   (cdr (children contrived_variable7)))))
(assert
 (not
  (= (cdr (cdr (cdr (children contrived_variable7))))
   (children contrived_variable7))))
(assert
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable7)))))
   contrived_variable7)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable7)))))
   (cdr (cdr (cdr (children contrived_variable7)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable7)))))
   (cdr (cdr (children contrived_variable7))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable7)))))
   (cdr (children contrived_variable7)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable7)))))
   (children contrived_variable7))))
(assert
 (not (= (pred (data contrived_variable7)) (data contrived_variable7))))
(assert
 (not
  (= (pred (pred (data contrived_variable7)))
   (pred (data contrived_variable7)))))
(assert
 (not (= (pred (pred (data contrived_variable7))) (data contrived_variable7))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable7))))
   (pred (pred (data contrived_variable7))))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable7))))
   (pred (data contrived_variable7)))))
(assert
 (not
  (= (pred (pred (pred (data contrived_variable7))))
   (data contrived_variable7))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable7)))))
   (pred (pred (pred (data contrived_variable7)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable7)))))
   (pred (pred (data contrived_variable7))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable7)))))
   (pred (data contrived_variable7)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable7)))))
   (data contrived_variable7))))
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
  (= (children (car (children (car (children contrived_variable0)))))
   (children (car (children contrived_variable0))))))
(assert
 (not
  (= (children (car (children (car (children contrived_variable0)))))
   (children contrived_variable0))))
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
  (= (car (cdr (children (car (children contrived_variable0)))))
   (car (children contrived_variable0)))))
(assert
 (not
  (= (car (cdr (children (car (children contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable0)))))
   (cdr (children (car (children contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable0)))))
   (children (car (children contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (children (car (children contrived_variable0)))))
   (children contrived_variable0))))
(assert
 (not
  (= (pred (data (car (children contrived_variable0))))
   (data (car (children contrived_variable0))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable0)))))
   (pred (data (car (children contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (data (car (children contrived_variable0)))))
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
  (= (car (children (car (cdr (children contrived_variable0)))))
   (car (cdr (children contrived_variable0))))))
(assert
 (not
  (= (car (children (car (cdr (children contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable0)))))
   (children (car (cdr (children contrived_variable0)))))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable0)))))
   (cdr (children contrived_variable0)))))
(assert
 (not
  (= (cdr (children (car (cdr (children contrived_variable0)))))
   (children contrived_variable0))))
(assert
 (not
  (= (pred (data (car (cdr (children contrived_variable0)))))
   (data (car (cdr (children contrived_variable0)))))))
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
  (= (children (car (cdr (cdr (children contrived_variable0)))))
   (cdr (cdr (children contrived_variable0))))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable0)))))
   (cdr (children contrived_variable0)))))
(assert
 (not
  (= (children (car (cdr (cdr (children contrived_variable0)))))
   (children contrived_variable0))))
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
 (not
  (= (car (cdr (cdr (cdr (children contrived_variable0)))))
   contrived_variable0)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable0)))))
   (cdr (cdr (cdr (children contrived_variable0)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable0)))))
   (cdr (cdr (children contrived_variable0))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable0)))))
   (cdr (children contrived_variable0)))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children contrived_variable0)))))
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
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable0)))))
   (pred (pred (pred (data contrived_variable0)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable0)))))
   (pred (pred (data contrived_variable0))))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable0)))))
   (pred (data contrived_variable0)))))
(assert
 (not
  (= (pred (pred (pred (pred (data contrived_variable0)))))
   (data contrived_variable0))))
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
  (= (pred (data (car (cdr (children contrived_variable1)))))
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
(assert (not (= (car (children x6)) x6)))
(assert (not (= (children (car (children x6))) (children x6))))
(assert (not (= (car (children (car (children x6)))) (car (children x6)))))
(assert (not (= (car (children (car (children x6)))) x6)))
(assert
 (not
  (= (children (car (children (car (children x6)))))
   (children (car (children x6))))))
(assert
 (not (= (children (car (children (car (children x6))))) (children x6))))
(assert
 (not (= (cdr (children (car (children x6)))) (children (car (children x6))))))
(assert (not (= (cdr (children (car (children x6)))) (children x6))))
(assert
 (not (= (car (cdr (children (car (children x6))))) (car (children x6)))))
(assert (not (= (car (cdr (children (car (children x6))))) x6)))
(assert
 (not
  (= (cdr (cdr (children (car (children x6)))))
   (cdr (children (car (children x6)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x6)))))
   (children (car (children x6))))))
(assert (not (= (cdr (cdr (children (car (children x6))))) (children x6))))
(assert
 (not (= (pred (data (car (children x6)))) (data (car (children x6))))))
(assert
 (not
  (= (pred (pred (data (car (children x6)))))
   (pred (data (car (children x6)))))))
(assert
 (not (= (pred (pred (data (car (children x6))))) (data (car (children x6))))))
(assert (not (= (cdr (children x6)) (children x6))))
(assert (not (= (car (cdr (children x6))) x6)))
(assert (not (= (children (car (cdr (children x6)))) (cdr (children x6)))))
(assert (not (= (children (car (cdr (children x6)))) (children x6))))
(assert
 (not
  (= (car (children (car (cdr (children x6))))) (car (cdr (children x6))))))
(assert (not (= (car (children (car (cdr (children x6))))) x6)))
(assert
 (not
  (= (cdr (children (car (cdr (children x6)))))
   (children (car (cdr (children x6)))))))
(assert
 (not (= (cdr (children (car (cdr (children x6))))) (cdr (children x6)))))
(assert (not (= (cdr (children (car (cdr (children x6))))) (children x6))))
(assert
 (not
  (= (pred (data (car (cdr (children x6))))) (data (car (cdr (children x6)))))))
(assert (not (= (cdr (cdr (children x6))) (cdr (children x6)))))
(assert (not (= (cdr (cdr (children x6))) (children x6))))
(assert (not (= (car (cdr (cdr (children x6)))) x6)))
(assert
 (not
  (= (children (car (cdr (cdr (children x6))))) (cdr (cdr (children x6))))))
(assert
 (not (= (children (car (cdr (cdr (children x6))))) (cdr (children x6)))))
(assert (not (= (children (car (cdr (cdr (children x6))))) (children x6))))
(assert (not (= (cdr (cdr (cdr (children x6)))) (cdr (cdr (children x6))))))
(assert (not (= (cdr (cdr (cdr (children x6)))) (cdr (children x6)))))
(assert (not (= (cdr (cdr (cdr (children x6)))) (children x6))))
(assert (not (= (car (cdr (cdr (cdr (children x6))))) x6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x6))))) (cdr (cdr (cdr (children x6)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x6))))) (cdr (cdr (children x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x6))))) (cdr (children x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x6))))) (children x6))))
(assert (not (= (pred (data x6)) (data x6))))
(assert (not (= (pred (pred (data x6))) (pred (data x6)))))
(assert (not (= (pred (pred (data x6))) (data x6))))
(assert (not (= (pred (pred (pred (data x6)))) (pred (pred (data x6))))))
(assert (not (= (pred (pred (pred (data x6)))) (pred (data x6)))))
(assert (not (= (pred (pred (pred (data x6)))) (data x6))))
(assert
 (not
  (= (pred (pred (pred (pred (data x6))))) (pred (pred (pred (data x6)))))))
(assert
 (not (= (pred (pred (pred (pred (data x6))))) (pred (pred (data x6))))))
(assert (not (= (pred (pred (pred (pred (data x6))))) (pred (data x6)))))
(assert (not (= (pred (pred (pred (pred (data x6))))) (data x6))))
(assert (not (= (car (children x5)) x5)))
(assert (not (= (children (car (children x5))) (children x5))))
(assert (not (= (car (children (car (children x5)))) (car (children x5)))))
(assert (not (= (car (children (car (children x5)))) x5)))
(assert
 (not
  (= (children (car (children (car (children x5)))))
   (children (car (children x5))))))
(assert
 (not (= (children (car (children (car (children x5))))) (children x5))))
(assert
 (not (= (cdr (children (car (children x5)))) (children (car (children x5))))))
(assert (not (= (cdr (children (car (children x5)))) (children x5))))
(assert
 (not (= (car (cdr (children (car (children x5))))) (car (children x5)))))
(assert (not (= (car (cdr (children (car (children x5))))) x5)))
(assert
 (not
  (= (cdr (cdr (children (car (children x5)))))
   (cdr (children (car (children x5)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x5)))))
   (children (car (children x5))))))
(assert (not (= (cdr (cdr (children (car (children x5))))) (children x5))))
(assert
 (not (= (pred (data (car (children x5)))) (data (car (children x5))))))
(assert
 (not
  (= (pred (pred (data (car (children x5)))))
   (pred (data (car (children x5)))))))
(assert
 (not (= (pred (pred (data (car (children x5))))) (data (car (children x5))))))
(assert (not (= (cdr (children x5)) (children x5))))
(assert (not (= (car (cdr (children x5))) x5)))
(assert (not (= (children (car (cdr (children x5)))) (cdr (children x5)))))
(assert (not (= (children (car (cdr (children x5)))) (children x5))))
(assert
 (not
  (= (car (children (car (cdr (children x5))))) (car (cdr (children x5))))))
(assert (not (= (car (children (car (cdr (children x5))))) x5)))
(assert
 (not
  (= (cdr (children (car (cdr (children x5)))))
   (children (car (cdr (children x5)))))))
(assert
 (not (= (cdr (children (car (cdr (children x5))))) (cdr (children x5)))))
(assert (not (= (cdr (children (car (cdr (children x5))))) (children x5))))
(assert
 (not
  (= (pred (data (car (cdr (children x5))))) (data (car (cdr (children x5)))))))
(assert (not (= (cdr (cdr (children x5))) (cdr (children x5)))))
(assert (not (= (cdr (cdr (children x5))) (children x5))))
(assert (not (= (car (cdr (cdr (children x5)))) x5)))
(assert
 (not
  (= (children (car (cdr (cdr (children x5))))) (cdr (cdr (children x5))))))
(assert
 (not (= (children (car (cdr (cdr (children x5))))) (cdr (children x5)))))
(assert (not (= (children (car (cdr (cdr (children x5))))) (children x5))))
(assert (not (= (cdr (cdr (cdr (children x5)))) (cdr (cdr (children x5))))))
(assert (not (= (cdr (cdr (cdr (children x5)))) (cdr (children x5)))))
(assert (not (= (cdr (cdr (cdr (children x5)))) (children x5))))
(assert (not (= (car (cdr (cdr (cdr (children x5))))) x5)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x5))))) (cdr (cdr (cdr (children x5)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x5))))) (cdr (cdr (children x5))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x5))))) (cdr (children x5)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x5))))) (children x5))))
(assert (not (= (pred (data x5)) (data x5))))
(assert (not (= (pred (pred (data x5))) (pred (data x5)))))
(assert (not (= (pred (pred (data x5))) (data x5))))
(assert (not (= (pred (pred (pred (data x5)))) (pred (pred (data x5))))))
(assert (not (= (pred (pred (pred (data x5)))) (pred (data x5)))))
(assert (not (= (pred (pred (pred (data x5)))) (data x5))))
(assert
 (not
  (= (pred (pred (pred (pred (data x5))))) (pred (pred (pred (data x5)))))))
(assert
 (not (= (pred (pred (pred (pred (data x5))))) (pred (pred (data x5))))))
(assert (not (= (pred (pred (pred (pred (data x5))))) (pred (data x5)))))
(assert (not (= (pred (pred (pred (pred (data x5))))) (data x5))))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x2)))))))
   (pred (pred (pred (pred (pred (pred x2)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x2)))))))
   (pred (pred (pred (pred (pred x2))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x2)))))))
   (pred (pred (pred (pred x2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x2)))))))
   (pred (pred (pred x2))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x2))))))) (pred (pred x2)))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred x2))))))) (pred x2))))
(assert (not (= (pred (pred (pred (pred (pred (pred (pred x2))))))) x2)))
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
(check-sat)
