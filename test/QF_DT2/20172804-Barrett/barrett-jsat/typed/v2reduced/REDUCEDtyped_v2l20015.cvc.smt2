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
(declare-fun contrived_variable0 () nat)
(declare-fun contrived_variable1 () nat)
(assert (is-zero zero))
(assert (is-null null))
(assert (and (not ((_ is node) x6)) (not (= contrived_variable0 x1))))
(assert
 (or
  (and (is-leaf x5) (and (= (data x5) contrived_variable0)
   (= (leaf contrived_variable1) x5) (= (data x5) contrived_variable1)))
  (and (not (is-leaf x5)) (= contrived_variable0 zero))))
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
 (or (and (is-node x6) (not (is-leaf x6)))
  (and (not (is-node x6)) (is-leaf x6))))
(assert
 (or (and (is-node x5) (not (is-leaf x5)))
  (and (not (is-node x5)) (is-leaf x5))))
(assert
 (or (and (is-succ contrived_variable1) (not (is-zero contrived_variable1)))
  (and (not (is-succ contrived_variable1)) (is-zero contrived_variable1))))
(assert (=> (is-zero contrived_variable1) (= contrived_variable1 zero)))
(assert
 (or (and (is-succ contrived_variable0) (not (is-zero contrived_variable0)))
  (and (not (is-succ contrived_variable0)) (is-zero contrived_variable0))))
(assert (=> (is-zero contrived_variable0) (= contrived_variable0 zero)))
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
(assert (not (= (children (car x4)) x4)))
(assert (not (= (car (children (car x4))) (car x4))))
(assert (not (= (cdr (children (car x4))) (children (car x4)))))
(assert (not (= (cdr (children (car x4))) x4)))
(assert (not (= (pred (data (car x4))) (data (car x4)))))
(assert (not (= (cdr x4) x4)))
(assert (not (= (children (car (cdr x4))) (cdr x4))))
(assert (not (= (children (car (cdr x4))) x4)))
(assert (not (= (cdr (cdr x4)) (cdr x4))))
(assert (not (= (cdr (cdr x4)) x4)))
(assert (not (= (cdr (cdr (cdr x4))) (cdr (cdr x4)))))
(assert (not (= (cdr (cdr (cdr x4))) (cdr x4))))
(assert (not (= (cdr (cdr (cdr x4))) x4)))
(assert (not (= (children (car x3)) x3)))
(assert (not (= (car (children (car x3))) (car x3))))
(assert (not (= (cdr (children (car x3))) (children (car x3)))))
(assert (not (= (cdr (children (car x3))) x3)))
(assert (not (= (pred (data (car x3))) (data (car x3)))))
(assert (not (= (cdr x3) x3)))
(assert (not (= (children (car (cdr x3))) (cdr x3))))
(assert (not (= (children (car (cdr x3))) x3)))
(assert (not (= (cdr (cdr x3)) (cdr x3))))
(assert (not (= (cdr (cdr x3)) x3)))
(assert (not (= (cdr (cdr (cdr x3))) (cdr (cdr x3)))))
(assert (not (= (cdr (cdr (cdr x3))) (cdr x3))))
(assert (not (= (cdr (cdr (cdr x3))) x3)))
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
(assert (not (= (car (children x6)) x6)))
(assert (not (= (cdr (children x6)) (children x6))))
(assert (not (= (pred (data x6)) (data x6))))
(assert (not (= (car (children x5)) x5)))
(assert (not (= (cdr (children x5)) (children x5))))
(assert (not (= (pred (data x5)) (data x5))))
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
(check-sat)
