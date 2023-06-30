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
(declare-fun cdr (list) list)
(declare-fun car (list) tree)
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
(declare-fun contrived_variable0 () nat)
(declare-fun contrived_variable4 () nat)
(declare-fun contrived_variable3 () nat)
(declare-fun contrived_variable2 () nat)
(assert (is-zero zero))
(assert (is-null null))
(assert
 (and (not (= (car null) (leaf contrived_variable0))) (and
  (= (data x3) (pred zero)) (= (leaf contrived_variable2) x3)
  (=> (is-leaf x3) (and (= (data x3) contrived_variable2))))))
(assert
 (and (= (pred x1) contrived_variable1) (= (succ contrived_variable3) x1)
  (=> (is-succ x1) (and (= (pred x1) contrived_variable3)))))
(assert
 (and (= (pred contrived_variable1) contrived_variable0)
  (= (succ contrived_variable4) contrived_variable1)
  (=> (is-succ contrived_variable1)
   (and (= (pred contrived_variable1) contrived_variable4)))))
(assert
 (or (and (not (is-cons x2)) (is-null x2))
  (and (is-cons x2) (not (is-null x2)))))
(assert (=> (is-null x2) (= x2 null)))
(assert
 (or (and (not (is-cons null)) (is-null null))
  (and (is-cons null) (not (is-null null)))))
(assert (=> (is-null null) (= null null)))
(assert
 (or (and (not (is-node x3)) (is-leaf x3))
  (and (is-node x3) (not (is-leaf x3)))))
(assert
 (or (and (not (is-succ contrived_variable2)) (is-zero contrived_variable2))
  (and (is-succ contrived_variable2) (not (is-zero contrived_variable2)))))
(assert (=> (is-zero contrived_variable2) (= contrived_variable2 zero)))
(assert
 (or (and (not (is-succ contrived_variable3)) (is-zero contrived_variable3))
  (and (is-succ contrived_variable3) (not (is-zero contrived_variable3)))))
(assert (=> (is-zero contrived_variable3) (= contrived_variable3 zero)))
(assert
 (or (and (not (is-succ contrived_variable4)) (is-zero contrived_variable4))
  (and (is-succ contrived_variable4) (not (is-zero contrived_variable4)))))
(assert (=> (is-zero contrived_variable4) (= contrived_variable4 zero)))
(assert
 (or (and (not (is-succ contrived_variable0)) (is-zero contrived_variable0))
  (and (is-succ contrived_variable0) (not (is-zero contrived_variable0)))))
(assert (=> (is-zero contrived_variable0) (= contrived_variable0 zero)))
(assert
 (or (and (not (is-succ contrived_variable1)) (is-zero contrived_variable1))
  (and (is-succ contrived_variable1) (not (is-zero contrived_variable1)))))
(assert (=> (is-zero contrived_variable1) (= contrived_variable1 zero)))
(assert
 (or (and (not (is-succ x1)) (is-zero x1))
  (and (is-succ x1) (not (is-zero x1)))))
(assert (=> (is-zero x1) (= x1 zero)))
(assert
 (or (and (not (is-succ zero)) (is-zero zero))
  (and (is-succ zero) (not (is-zero zero)))))
(assert (=> (is-zero zero) (= zero zero)))
(assert (=> (and (is-cons x2)) (not (= (cdr x2) x2))))
(assert (=> (and (is-cons (cdr x2))) (not (= (cdr (cdr x2)) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2))) (not (= (cdr (cdr x2)) x2))))
(assert
 (=> (and (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) (cdr (cdr x2))))))
(assert
 (=> (and (is-cons (cdr x2)) (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2)) (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) x2))))
(assert
 (=> (and (is-cons (cdr (cdr (cdr x2)))))
  (not (= (cdr (cdr (cdr (cdr x2)))) (cdr (cdr (cdr x2)))))))
(assert
 (=> (and (is-cons (cdr (cdr x2))) (is-cons (cdr (cdr (cdr x2)))))
  (not (= (cdr (cdr (cdr (cdr x2)))) (cdr (cdr x2))))))
(assert
 (=>
  (and (is-cons (cdr x2)) (is-cons (cdr (cdr x2)))
   (is-cons (cdr (cdr (cdr x2)))))
  (not (= (cdr (cdr (cdr (cdr x2)))) (cdr x2)))))
(assert
 (=>
  (and (is-cons x2) (is-cons (cdr x2)) (is-cons (cdr (cdr x2)))
   (is-cons (cdr (cdr (cdr x2)))))
  (not (= (cdr (cdr (cdr (cdr x2)))) x2))))
(assert
 (=> (and (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) (cdr (cdr x2))))))
(assert
 (=> (and (is-cons (cdr x2)) (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2)) (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) x2))))
(assert
 (=> (and (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) (cdr (cdr x2))))))
(assert
 (=> (and (is-cons (cdr x2)) (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2)) (is-cons (cdr (cdr x2))))
  (not (= (cdr (cdr (cdr x2))) x2))))
(assert (=> (and (is-cons (cdr x2))) (not (= (cdr (cdr x2)) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2))) (not (= (cdr (cdr x2)) x2))))
(assert
 (=> (and (is-cons (cdr (cdr x2))) (is-node (car (cdr (cdr x2)))))
  (not (= (children (car (cdr (cdr x2)))) (cdr (cdr x2))))))
(assert
 (=>
  (and (is-cons (cdr x2)) (is-cons (cdr (cdr x2)))
   (is-node (car (cdr (cdr x2)))))
  (not (= (children (car (cdr (cdr x2)))) (cdr x2)))))
(assert
 (=>
  (and (is-cons x2) (is-cons (cdr x2)) (is-cons (cdr (cdr x2)))
   (is-node (car (cdr (cdr x2)))))
  (not (= (children (car (cdr (cdr x2)))) x2))))
(assert (=> (and (is-cons (cdr x2))) (not (= (cdr (cdr x2)) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2))) (not (= (cdr (cdr x2)) x2))))
(assert (=> (and (is-cons x2)) (not (= (cdr x2) x2))))
(assert
 (=> (and (is-succ (data (car (cdr x2)))))
  (not (= (pred (data (car (cdr x2)))) (data (car (cdr x2)))))))
(assert
 (=> (and (is-cons (cdr x2)) (is-node (car (cdr x2))))
  (not (= (children (car (cdr x2))) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2)) (is-node (car (cdr x2))))
  (not (= (children (car (cdr x2))) x2))))
(assert
 (=> (and (is-cons (children (car (cdr x2)))))
  (not (= (cdr (children (car (cdr x2)))) (children (car (cdr x2)))))))
(assert
 (=>
  (and (is-cons (cdr x2)) (is-node (car (cdr x2)))
   (is-cons (children (car (cdr x2)))))
  (not (= (cdr (children (car (cdr x2)))) (cdr x2)))))
(assert
 (=>
  (and (is-cons x2) (is-cons (cdr x2)) (is-node (car (cdr x2)))
   (is-cons (children (car (cdr x2)))))
  (not (= (cdr (children (car (cdr x2)))) x2))))
(assert
 (=> (and (is-cons (cdr x2)) (is-node (car (cdr x2))))
  (not (= (children (car (cdr x2))) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2)) (is-node (car (cdr x2))))
  (not (= (children (car (cdr x2))) x2))))
(assert
 (=> (and (is-node (car (cdr x2))) (is-cons (children (car (cdr x2)))))
  (not (= (car (children (car (cdr x2)))) (car (cdr x2))))))
(assert
 (=> (and (is-cons (cdr x2)) (is-node (car (cdr x2))))
  (not (= (children (car (cdr x2))) (cdr x2)))))
(assert
 (=> (and (is-cons x2) (is-cons (cdr x2)) (is-node (car (cdr x2))))
  (not (= (children (car (cdr x2))) x2))))
(assert (=> (and (is-cons x2)) (not (= (cdr x2) x2))))
(assert
 (=> (and (is-succ (data (car x2))))
  (not (= (pred (data (car x2))) (data (car x2))))))
(assert
 (=> (and (is-succ (pred (data (car x2)))))
  (not (= (pred (pred (data (car x2)))) (pred (data (car x2)))))))
(assert
 (=> (and (is-succ (data (car x2))) (is-succ (pred (data (car x2)))))
  (not (= (pred (pred (data (car x2)))) (data (car x2))))))
(assert
 (=> (and (is-succ (data (car x2))))
  (not (= (pred (data (car x2))) (data (car x2))))))
(assert
 (=> (and (is-cons x2) (is-node (car x2))) (not (= (children (car x2)) x2))))
(assert
 (=> (and (is-cons (children (car x2))))
  (not (= (cdr (children (car x2))) (children (car x2))))))
(assert
 (=> (and (is-cons x2) (is-node (car x2)) (is-cons (children (car x2))))
  (not (= (cdr (children (car x2))) x2))))
(assert
 (=> (and (is-cons (cdr (children (car x2)))))
  (not (= (cdr (cdr (children (car x2)))) (cdr (children (car x2)))))))
(assert
 (=> (and (is-cons (children (car x2))) (is-cons (cdr (children (car x2)))))
  (not (= (cdr (cdr (children (car x2)))) (children (car x2))))))
(assert
 (=>
  (and (is-cons x2) (is-node (car x2)) (is-cons (children (car x2)))
   (is-cons (cdr (children (car x2)))))
  (not (= (cdr (cdr (children (car x2)))) x2))))
(assert
 (=> (and (is-cons (children (car x2))))
  (not (= (cdr (children (car x2))) (children (car x2))))))
(assert
 (=> (and (is-cons x2) (is-node (car x2)) (is-cons (children (car x2))))
  (not (= (cdr (children (car x2))) x2))))
(assert
 (=>
  (and (is-node (car x2)) (is-cons (children (car x2)))
   (is-cons (cdr (children (car x2)))))
  (not (= (car (cdr (children (car x2)))) (car x2)))))
(assert
 (=> (and (is-cons (children (car x2))))
  (not (= (cdr (children (car x2))) (children (car x2))))))
(assert
 (=> (and (is-cons x2) (is-node (car x2)) (is-cons (children (car x2))))
  (not (= (cdr (children (car x2))) x2))))
(assert
 (=> (and (is-cons x2) (is-node (car x2))) (not (= (children (car x2)) x2))))
(assert
 (=> (and (is-node (car x2)) (is-cons (children (car x2))))
  (not (= (car (children (car x2))) (car x2)))))
(assert
 (=> (and (is-node (car x2)) (is-cons (children (car x2))))
  (not (= (car (children (car x2))) (car x2)))))
(assert
 (=> (and (is-cons (children (car x2))) (is-node (car (children (car x2)))))
  (not (= (children (car (children (car x2)))) (children (car x2))))))
(assert
 (=>
  (and (is-cons x2) (is-node (car x2)) (is-cons (children (car x2)))
   (is-node (car (children (car x2)))))
  (not (= (children (car (children (car x2)))) x2))))
(assert
 (=> (and (is-node (car x2)) (is-cons (children (car x2))))
  (not (= (car (children (car x2))) (car x2)))))
(assert
 (=> (and (is-cons x2) (is-node (car x2))) (not (= (children (car x2)) x2))))
(assert (=> (and (is-cons null)) (not (= (cdr null) null))))
(assert (=> (and (is-cons (cdr null))) (not (= (cdr (cdr null)) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)))
  (not (= (cdr (cdr null)) null))))
(assert
 (=> (and (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) (cdr (cdr null))))))
(assert
 (=> (and (is-cons (cdr null)) (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)) (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) null))))
(assert
 (=> (and (is-cons (cdr (cdr (cdr null)))))
  (not (= (cdr (cdr (cdr (cdr null)))) (cdr (cdr (cdr null)))))))
(assert
 (=> (and (is-cons (cdr (cdr null))) (is-cons (cdr (cdr (cdr null)))))
  (not (= (cdr (cdr (cdr (cdr null)))) (cdr (cdr null))))))
(assert
 (=>
  (and (is-cons (cdr null)) (is-cons (cdr (cdr null)))
   (is-cons (cdr (cdr (cdr null)))))
  (not (= (cdr (cdr (cdr (cdr null)))) (cdr null)))))
(assert
 (=>
  (and (is-cons null) (is-cons (cdr null)) (is-cons (cdr (cdr null)))
   (is-cons (cdr (cdr (cdr null)))))
  (not (= (cdr (cdr (cdr (cdr null)))) null))))
(assert
 (=> (and (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) (cdr (cdr null))))))
(assert
 (=> (and (is-cons (cdr null)) (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)) (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) null))))
(assert
 (=> (and (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) (cdr (cdr null))))))
(assert
 (=> (and (is-cons (cdr null)) (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)) (is-cons (cdr (cdr null))))
  (not (= (cdr (cdr (cdr null))) null))))
(assert (=> (and (is-cons (cdr null))) (not (= (cdr (cdr null)) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)))
  (not (= (cdr (cdr null)) null))))
(assert
 (=> (and (is-cons (cdr (cdr null))) (is-node (car (cdr (cdr null)))))
  (not (= (children (car (cdr (cdr null)))) (cdr (cdr null))))))
(assert
 (=>
  (and (is-cons (cdr null)) (is-cons (cdr (cdr null)))
   (is-node (car (cdr (cdr null)))))
  (not (= (children (car (cdr (cdr null)))) (cdr null)))))
(assert
 (=>
  (and (is-cons null) (is-cons (cdr null)) (is-cons (cdr (cdr null)))
   (is-node (car (cdr (cdr null)))))
  (not (= (children (car (cdr (cdr null)))) null))))
(assert (=> (and (is-cons (cdr null))) (not (= (cdr (cdr null)) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)))
  (not (= (cdr (cdr null)) null))))
(assert (=> (and (is-cons null)) (not (= (cdr null) null))))
(assert
 (=> (and (is-succ (data (car (cdr null)))))
  (not (= (pred (data (car (cdr null)))) (data (car (cdr null)))))))
(assert
 (=> (and (is-cons (cdr null)) (is-node (car (cdr null))))
  (not (= (children (car (cdr null))) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)) (is-node (car (cdr null))))
  (not (= (children (car (cdr null))) null))))
(assert
 (=> (and (is-cons (children (car (cdr null)))))
  (not (= (cdr (children (car (cdr null)))) (children (car (cdr null)))))))
(assert
 (=>
  (and (is-cons (cdr null)) (is-node (car (cdr null)))
   (is-cons (children (car (cdr null)))))
  (not (= (cdr (children (car (cdr null)))) (cdr null)))))
(assert
 (=>
  (and (is-cons null) (is-cons (cdr null)) (is-node (car (cdr null)))
   (is-cons (children (car (cdr null)))))
  (not (= (cdr (children (car (cdr null)))) null))))
(assert
 (=> (and (is-cons (cdr null)) (is-node (car (cdr null))))
  (not (= (children (car (cdr null))) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)) (is-node (car (cdr null))))
  (not (= (children (car (cdr null))) null))))
(assert
 (=> (and (is-node (car (cdr null))) (is-cons (children (car (cdr null)))))
  (not (= (car (children (car (cdr null)))) (car (cdr null))))))
(assert
 (=> (and (is-cons (cdr null)) (is-node (car (cdr null))))
  (not (= (children (car (cdr null))) (cdr null)))))
(assert
 (=> (and (is-cons null) (is-cons (cdr null)) (is-node (car (cdr null))))
  (not (= (children (car (cdr null))) null))))
(assert (=> (and (is-cons null)) (not (= (cdr null) null))))
(assert
 (=> (and (is-succ (data (car null))))
  (not (= (pred (data (car null))) (data (car null))))))
(assert
 (=> (and (is-succ (pred (data (car null)))))
  (not (= (pred (pred (data (car null)))) (pred (data (car null)))))))
(assert
 (=> (and (is-succ (data (car null))) (is-succ (pred (data (car null)))))
  (not (= (pred (pred (data (car null)))) (data (car null))))))
(assert
 (=> (and (is-succ (data (car null))))
  (not (= (pred (data (car null))) (data (car null))))))
(assert
 (=> (and (is-cons null) (is-node (car null)))
  (not (= (children (car null)) null))))
(assert
 (=> (and (is-cons (children (car null))))
  (not (= (cdr (children (car null))) (children (car null))))))
(assert
 (=>
  (and (is-cons null) (is-node (car null)) (is-cons (children (car null))))
  (not (= (cdr (children (car null))) null))))
(assert
 (=> (and (is-cons (cdr (children (car null)))))
  (not (= (cdr (cdr (children (car null)))) (cdr (children (car null)))))))
(assert
 (=>
  (and (is-cons (children (car null))) (is-cons (cdr (children (car null)))))
  (not (= (cdr (cdr (children (car null)))) (children (car null))))))
(assert
 (=>
  (and (is-cons null) (is-node (car null)) (is-cons (children (car null)))
   (is-cons (cdr (children (car null)))))
  (not (= (cdr (cdr (children (car null)))) null))))
(assert
 (=> (and (is-cons (children (car null))))
  (not (= (cdr (children (car null))) (children (car null))))))
(assert
 (=>
  (and (is-cons null) (is-node (car null)) (is-cons (children (car null))))
  (not (= (cdr (children (car null))) null))))
(assert
 (=>
  (and (is-node (car null)) (is-cons (children (car null)))
   (is-cons (cdr (children (car null)))))
  (not (= (car (cdr (children (car null)))) (car null)))))
(assert
 (=> (and (is-cons (children (car null))))
  (not (= (cdr (children (car null))) (children (car null))))))
(assert
 (=>
  (and (is-cons null) (is-node (car null)) (is-cons (children (car null))))
  (not (= (cdr (children (car null))) null))))
(assert
 (=> (and (is-cons null) (is-node (car null)))
  (not (= (children (car null)) null))))
(assert
 (=> (and (is-node (car null)) (is-cons (children (car null))))
  (not (= (car (children (car null))) (car null)))))
(assert
 (=> (and (is-node (car null)) (is-cons (children (car null))))
  (not (= (car (children (car null))) (car null)))))
(assert
 (=>
  (and (is-cons (children (car null))) (is-node (car (children (car null)))))
  (not (= (children (car (children (car null)))) (children (car null))))))
(assert
 (=>
  (and (is-cons null) (is-node (car null)) (is-cons (children (car null)))
   (is-node (car (children (car null)))))
  (not (= (children (car (children (car null)))) null))))
(assert
 (=> (and (is-node (car null)) (is-cons (children (car null))))
  (not (= (car (children (car null))) (car null)))))
(assert
 (=> (and (is-cons null) (is-node (car null)))
  (not (= (children (car null)) null))))
(assert (=> (and (is-succ (data x3))) (not (= (pred (data x3)) (data x3)))))
(assert
 (=> (and (is-succ (pred (data x3))))
  (not (= (pred (pred (data x3))) (pred (data x3))))))
(assert
 (=> (and (is-succ (data x3)) (is-succ (pred (data x3))))
  (not (= (pred (pred (data x3))) (data x3)))))
(assert
 (=> (and (is-succ (pred (pred (data x3)))))
  (not (= (pred (pred (pred (data x3)))) (pred (pred (data x3)))))))
(assert
 (=> (and (is-succ (pred (data x3))) (is-succ (pred (pred (data x3)))))
  (not (= (pred (pred (pred (data x3)))) (pred (data x3))))))
(assert
 (=>
  (and (is-succ (data x3)) (is-succ (pred (data x3)))
   (is-succ (pred (pred (data x3)))))
  (not (= (pred (pred (pred (data x3)))) (data x3)))))
(assert
 (=> (and (is-succ (pred (data x3))))
  (not (= (pred (pred (data x3))) (pred (data x3))))))
(assert
 (=> (and (is-succ (data x3)) (is-succ (pred (data x3))))
  (not (= (pred (pred (data x3))) (data x3)))))
(assert (=> (and (is-succ (data x3))) (not (= (pred (data x3)) (data x3)))))
(assert
 (=> (and (is-cons (children x3)))
  (not (= (cdr (children x3)) (children x3)))))
(assert
 (=> (and (is-cons (cdr (children x3))))
  (not (= (cdr (cdr (children x3))) (cdr (children x3))))))
(assert
 (=> (and (is-cons (children x3)) (is-cons (cdr (children x3))))
  (not (= (cdr (cdr (children x3))) (children x3)))))
(assert
 (=> (and (is-cons (cdr (cdr (children x3)))))
  (not (= (cdr (cdr (cdr (children x3)))) (cdr (cdr (children x3)))))))
(assert
 (=> (and (is-cons (cdr (children x3))) (is-cons (cdr (cdr (children x3)))))
  (not (= (cdr (cdr (cdr (children x3)))) (cdr (children x3))))))
(assert
 (=>
  (and (is-cons (children x3)) (is-cons (cdr (children x3)))
   (is-cons (cdr (cdr (children x3)))))
  (not (= (cdr (cdr (cdr (children x3)))) (children x3)))))
(assert
 (=> (and (is-cons (cdr (children x3))))
  (not (= (cdr (cdr (children x3))) (cdr (children x3))))))
(assert
 (=> (and (is-cons (children x3)) (is-cons (cdr (children x3))))
  (not (= (cdr (cdr (children x3))) (children x3)))))
(assert
 (=>
  (and (is-node x3) (is-cons (children x3)) (is-cons (cdr (children x3)))
   (is-cons (cdr (cdr (children x3)))))
  (not (= (car (cdr (cdr (children x3)))) x3))))
(assert
 (=> (and (is-cons (cdr (children x3))))
  (not (= (cdr (cdr (children x3))) (cdr (children x3))))))
(assert
 (=> (and (is-cons (children x3)) (is-cons (cdr (children x3))))
  (not (= (cdr (cdr (children x3))) (children x3)))))
(assert
 (=> (and (is-cons (children x3)))
  (not (= (cdr (children x3)) (children x3)))))
(assert
 (=> (and (is-node x3) (is-cons (children x3)) (is-cons (cdr (children x3))))
  (not (= (car (cdr (children x3))) x3))))
(assert
 (=> (and (is-node x3) (is-cons (children x3)) (is-cons (cdr (children x3))))
  (not (= (car (cdr (children x3))) x3))))
(assert
 (=> (and (is-cons (cdr (children x3))) (is-node (car (cdr (children x3)))))
  (not (= (children (car (cdr (children x3)))) (cdr (children x3))))))
(assert
 (=>
  (and (is-cons (children x3)) (is-cons (cdr (children x3)))
   (is-node (car (cdr (children x3)))))
  (not (= (children (car (cdr (children x3)))) (children x3)))))
(assert
 (=> (and (is-node x3) (is-cons (children x3)) (is-cons (cdr (children x3))))
  (not (= (car (cdr (children x3))) x3))))
(assert
 (=> (and (is-cons (children x3)))
  (not (= (cdr (children x3)) (children x3)))))
(assert
 (=> (and (is-node x3) (is-cons (children x3)))
  (not (= (car (children x3)) x3))))
(assert
 (=> (and (is-succ (data (car (children x3)))))
  (not (= (pred (data (car (children x3)))) (data (car (children x3)))))))
(assert
 (=> (and (is-node x3) (is-cons (children x3)))
  (not (= (car (children x3)) x3))))
(assert
 (=> (and (is-cons (children x3)) (is-node (car (children x3))))
  (not (= (children (car (children x3))) (children x3)))))
(assert
 (=> (and (is-cons (children (car (children x3)))))
  (not
   (= (cdr (children (car (children x3)))) (children (car (children x3)))))))
(assert
 (=>
  (and (is-cons (children x3)) (is-node (car (children x3)))
   (is-cons (children (car (children x3)))))
  (not (= (cdr (children (car (children x3)))) (children x3)))))
(assert
 (=> (and (is-cons (children x3)) (is-node (car (children x3))))
  (not (= (children (car (children x3))) (children x3)))))
(assert
 (=>
  (and (is-node (car (children x3))) (is-cons (children (car (children x3)))))
  (not (= (car (children (car (children x3)))) (car (children x3))))))
(assert
 (=>
  (and (is-node x3) (is-cons (children x3)) (is-node (car (children x3)))
   (is-cons (children (car (children x3)))))
  (not (= (car (children (car (children x3)))) x3))))
(assert
 (=> (and (is-cons (children x3)) (is-node (car (children x3))))
  (not (= (children (car (children x3))) (children x3)))))
(assert
 (=> (and (is-node x3) (is-cons (children x3)))
  (not (= (car (children x3)) x3))))
(assert
 (=> (and (is-succ contrived_variable2))
  (not (= (pred contrived_variable2) contrived_variable2))))
(assert
 (=> (and (is-succ (pred contrived_variable2)))
  (not (= (pred (pred contrived_variable2)) (pred contrived_variable2)))))
(assert
 (=> (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2)))
  (not (= (pred (pred contrived_variable2)) contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable2))))
  (not
   (= (pred (pred (pred contrived_variable2)))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2))))
  (not
   (= (pred (pred (pred contrived_variable2))) (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2))))
  (not (= (pred (pred (pred contrived_variable2))) contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2)))) contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    contrived_variable2))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable2))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    contrived_variable2))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred (pred (pred (pred (pred (pred contrived_variable2))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable2)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable2))))))))
    contrived_variable2))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable2))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable2))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable2)))))))
    contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred (pred (pred (pred contrived_variable2)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable2)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable2))))))
    contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred (pred (pred (pred contrived_variable2))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2))))
   (is-succ (pred (pred (pred (pred contrived_variable2))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable2)))))
    contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2))))
    (pred (pred (pred contrived_variable2)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2))))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2))))
    (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2)))
   (is-succ (pred (pred (pred contrived_variable2)))))
  (not
   (= (pred (pred (pred (pred contrived_variable2)))) contrived_variable2))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable2))))
  (not
   (= (pred (pred (pred contrived_variable2)))
    (pred (pred contrived_variable2))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2))))
  (not
   (= (pred (pred (pred contrived_variable2))) (pred contrived_variable2)))))
(assert
 (=>
  (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2))
   (is-succ (pred (pred contrived_variable2))))
  (not (= (pred (pred (pred contrived_variable2))) contrived_variable2))))
(assert
 (=> (and (is-succ (pred contrived_variable2)))
  (not (= (pred (pred contrived_variable2)) (pred contrived_variable2)))))
(assert
 (=> (and (is-succ contrived_variable2) (is-succ (pred contrived_variable2)))
  (not (= (pred (pred contrived_variable2)) contrived_variable2))))
(assert
 (=> (and (is-succ contrived_variable2))
  (not (= (pred contrived_variable2) contrived_variable2))))
(assert
 (=> (and (is-succ contrived_variable3))
  (not (= (pred contrived_variable3) contrived_variable3))))
(assert
 (=> (and (is-succ (pred contrived_variable3)))
  (not (= (pred (pred contrived_variable3)) (pred contrived_variable3)))))
(assert
 (=> (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3)))
  (not (= (pred (pred contrived_variable3)) contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable3))))
  (not
   (= (pred (pred (pred contrived_variable3)))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3))))
  (not
   (= (pred (pred (pred contrived_variable3))) (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3))))
  (not (= (pred (pred (pred contrived_variable3))) contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3)))) contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    contrived_variable3))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable3))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    contrived_variable3))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred (pred (pred (pred (pred (pred contrived_variable3))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable3)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable3))))))))
    contrived_variable3))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable3))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable3))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable3)))))))
    contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred (pred (pred (pred contrived_variable3)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable3)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable3))))))
    contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred (pred (pred (pred contrived_variable3))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3))))
   (is-succ (pred (pred (pred (pred contrived_variable3))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable3)))))
    contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3))))
    (pred (pred (pred contrived_variable3)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3))))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3))))
    (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3)))
   (is-succ (pred (pred (pred contrived_variable3)))))
  (not
   (= (pred (pred (pred (pred contrived_variable3)))) contrived_variable3))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable3))))
  (not
   (= (pred (pred (pred contrived_variable3)))
    (pred (pred contrived_variable3))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3))))
  (not
   (= (pred (pred (pred contrived_variable3))) (pred contrived_variable3)))))
(assert
 (=>
  (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3))
   (is-succ (pred (pred contrived_variable3))))
  (not (= (pred (pred (pred contrived_variable3))) contrived_variable3))))
(assert
 (=> (and (is-succ (pred contrived_variable3)))
  (not (= (pred (pred contrived_variable3)) (pred contrived_variable3)))))
(assert
 (=> (and (is-succ contrived_variable3) (is-succ (pred contrived_variable3)))
  (not (= (pred (pred contrived_variable3)) contrived_variable3))))
(assert
 (=> (and (is-succ contrived_variable3))
  (not (= (pred contrived_variable3) contrived_variable3))))
(assert
 (=> (and (is-succ contrived_variable4))
  (not (= (pred contrived_variable4) contrived_variable4))))
(assert
 (=> (and (is-succ (pred contrived_variable4)))
  (not (= (pred (pred contrived_variable4)) (pred contrived_variable4)))))
(assert
 (=> (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4)))
  (not (= (pred (pred contrived_variable4)) contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable4))))
  (not
   (= (pred (pred (pred contrived_variable4)))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4))))
  (not
   (= (pred (pred (pred contrived_variable4))) (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4))))
  (not (= (pred (pred (pred contrived_variable4))) contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4)))) contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    contrived_variable4))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable4))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    contrived_variable4))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred (pred (pred (pred (pred (pred contrived_variable4))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable4)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable4))))))))
    contrived_variable4))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable4))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable4))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable4)))))))
    contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred (pred (pred (pred contrived_variable4)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable4)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable4))))))
    contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred (pred (pred (pred contrived_variable4))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4))))
   (is-succ (pred (pred (pred (pred contrived_variable4))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable4)))))
    contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4))))
    (pred (pred (pred contrived_variable4)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4))))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4))))
    (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4)))
   (is-succ (pred (pred (pred contrived_variable4)))))
  (not
   (= (pred (pred (pred (pred contrived_variable4)))) contrived_variable4))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable4))))
  (not
   (= (pred (pred (pred contrived_variable4)))
    (pred (pred contrived_variable4))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4))))
  (not
   (= (pred (pred (pred contrived_variable4))) (pred contrived_variable4)))))
(assert
 (=>
  (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4))
   (is-succ (pred (pred contrived_variable4))))
  (not (= (pred (pred (pred contrived_variable4))) contrived_variable4))))
(assert
 (=> (and (is-succ (pred contrived_variable4)))
  (not (= (pred (pred contrived_variable4)) (pred contrived_variable4)))))
(assert
 (=> (and (is-succ contrived_variable4) (is-succ (pred contrived_variable4)))
  (not (= (pred (pred contrived_variable4)) contrived_variable4))))
(assert
 (=> (and (is-succ contrived_variable4))
  (not (= (pred contrived_variable4) contrived_variable4))))
(assert
 (=> (and (is-succ contrived_variable0))
  (not (= (pred contrived_variable0) contrived_variable0))))
(assert
 (=> (and (is-succ (pred contrived_variable0)))
  (not (= (pred (pred contrived_variable0)) (pred contrived_variable0)))))
(assert
 (=> (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0)))
  (not (= (pred (pred contrived_variable0)) contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable0))))
  (not
   (= (pred (pred (pred contrived_variable0)))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0))))
  (not
   (= (pred (pred (pred contrived_variable0))) (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0))))
  (not (= (pred (pred (pred contrived_variable0))) contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0)))) contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    contrived_variable0))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable0))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    contrived_variable0))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred (pred (pred (pred (pred (pred contrived_variable0))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable0)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable0))))))))
    contrived_variable0))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable0))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable0))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable0)))))))
    contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred (pred (pred (pred contrived_variable0)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable0)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable0))))))
    contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred (pred (pred (pred contrived_variable0))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0))))
   (is-succ (pred (pred (pred (pred contrived_variable0))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable0)))))
    contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0))))
    (pred (pred (pred contrived_variable0)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0))))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0))))
    (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0)))
   (is-succ (pred (pred (pred contrived_variable0)))))
  (not
   (= (pred (pred (pred (pred contrived_variable0)))) contrived_variable0))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable0))))
  (not
   (= (pred (pred (pred contrived_variable0)))
    (pred (pred contrived_variable0))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0))))
  (not
   (= (pred (pred (pred contrived_variable0))) (pred contrived_variable0)))))
(assert
 (=>
  (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0))
   (is-succ (pred (pred contrived_variable0))))
  (not (= (pred (pred (pred contrived_variable0))) contrived_variable0))))
(assert
 (=> (and (is-succ (pred contrived_variable0)))
  (not (= (pred (pred contrived_variable0)) (pred contrived_variable0)))))
(assert
 (=> (and (is-succ contrived_variable0) (is-succ (pred contrived_variable0)))
  (not (= (pred (pred contrived_variable0)) contrived_variable0))))
(assert
 (=> (and (is-succ contrived_variable0))
  (not (= (pred contrived_variable0) contrived_variable0))))
(assert
 (=> (and (is-succ contrived_variable1))
  (not (= (pred contrived_variable1) contrived_variable1))))
(assert
 (=> (and (is-succ (pred contrived_variable1)))
  (not (= (pred (pred contrived_variable1)) (pred contrived_variable1)))))
(assert
 (=> (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1)))
  (not (= (pred (pred contrived_variable1)) contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable1))))
  (not
   (= (pred (pred (pred contrived_variable1)))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1))))
  (not
   (= (pred (pred (pred contrived_variable1))) (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1))))
  (not (= (pred (pred (pred contrived_variable1))) contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1)))) contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    contrived_variable1))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable1))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    contrived_variable1))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred (pred (pred (pred (pred (pred contrived_variable1))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred
    contrived_variable1)))))))))
  (not
   (=
    (pred (pred (pred (pred (pred (pred (pred (pred
     contrived_variable1))))))))
    contrived_variable1))))
(assert
 (=>
  (and
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred (pred (pred (pred contrived_variable1))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1))))))
   (is-succ (pred (pred (pred (pred (pred (pred contrived_variable1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred contrived_variable1)))))))
    contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred (pred (pred (pred contrived_variable1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1)))))
   (is-succ (pred (pred (pred (pred (pred contrived_variable1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred contrived_variable1))))))
    contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred (pred (pred (pred contrived_variable1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1))))
   (is-succ (pred (pred (pred (pred contrived_variable1))))))
  (not
   (= (pred (pred (pred (pred (pred contrived_variable1)))))
    contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1))))
    (pred (pred (pred contrived_variable1)))))))
(assert
 (=>
  (and (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1))))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1))))
    (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1)))
   (is-succ (pred (pred (pred contrived_variable1)))))
  (not
   (= (pred (pred (pred (pred contrived_variable1)))) contrived_variable1))))
(assert
 (=> (and (is-succ (pred (pred contrived_variable1))))
  (not
   (= (pred (pred (pred contrived_variable1)))
    (pred (pred contrived_variable1))))))
(assert
 (=>
  (and (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1))))
  (not
   (= (pred (pred (pred contrived_variable1))) (pred contrived_variable1)))))
(assert
 (=>
  (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1))
   (is-succ (pred (pred contrived_variable1))))
  (not (= (pred (pred (pred contrived_variable1))) contrived_variable1))))
(assert
 (=> (and (is-succ (pred contrived_variable1)))
  (not (= (pred (pred contrived_variable1)) (pred contrived_variable1)))))
(assert
 (=> (and (is-succ contrived_variable1) (is-succ (pred contrived_variable1)))
  (not (= (pred (pred contrived_variable1)) contrived_variable1))))
(assert
 (=> (and (is-succ contrived_variable1))
  (not (= (pred contrived_variable1) contrived_variable1))))
(assert (=> (and (is-succ x1)) (not (= (pred x1) x1))))
(assert (=> (and (is-succ (pred x1))) (not (= (pred (pred x1)) (pred x1)))))
(assert
 (=> (and (is-succ x1) (is-succ (pred x1))) (not (= (pred (pred x1)) x1))))
(assert
 (=> (and (is-succ (pred (pred x1))))
  (not (= (pred (pred (pred x1))) (pred (pred x1))))))
(assert
 (=> (and (is-succ (pred x1)) (is-succ (pred (pred x1))))
  (not (= (pred (pred (pred x1))) (pred x1)))))
(assert
 (=> (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1))))
  (not (= (pred (pred (pred x1))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) (pred (pred (pred x1)))))))
(assert
 (=> (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred x1))))))
  (not
   (= (pred (pred (pred (pred (pred x1))))) (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred x1))))))
    (pred (pred (pred (pred (pred x1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred x1))))))
    (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred x1)))))) (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not (= (pred (pred (pred (pred (pred (pred x1)))))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not (= (pred (pred (pred (pred (pred (pred x1)))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not (= (pred (pred (pred (pred (pred (pred x1)))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred (pred (pred (pred x1))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred (pred (pred x1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1))))))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred x1))))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred x1))))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
    (pred (pred (pred (pred (pred (pred (pred x1)))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
    (pred (pred (pred (pred (pred (pred x1))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
    (pred (pred (pred (pred (pred x1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
    (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
    (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1))))))))
    (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred x1)))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred (pred x1)))))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred (pred (pred (pred x1))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred (pred (pred x1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1)))))))
    (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred x1))))))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred x1))))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1))))))
   (is-succ (pred (pred (pred (pred (pred (pred x1))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred x1))))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred x1))))))
    (pred (pred (pred (pred (pred x1)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred x1))))))
    (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred x1)))))) (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not (= (pred (pred (pred (pred (pred (pred x1)))))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not (= (pred (pred (pred (pred (pred (pred x1)))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1)))))
   (is-succ (pred (pred (pred (pred (pred x1)))))))
  (not (= (pred (pred (pred (pred (pred (pred x1)))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred x1))))))
  (not
   (= (pred (pred (pred (pred (pred x1))))) (pred (pred (pred (pred x1))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) (pred (pred (pred x1)))))))
(assert
 (=>
  (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1))))
   (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))) (is-succ (pred (pred (pred (pred x1))))))
  (not (= (pred (pred (pred (pred (pred x1))))) x1))))
(assert
 (=> (and (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) (pred (pred (pred x1)))))))
(assert
 (=> (and (is-succ (pred (pred x1))) (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) (pred (pred x1))))))
(assert
 (=>
  (and (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) (pred x1)))))
(assert
 (=>
  (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1)))
   (is-succ (pred (pred (pred x1)))))
  (not (= (pred (pred (pred (pred x1)))) x1))))
(assert
 (=> (and (is-succ (pred (pred x1))))
  (not (= (pred (pred (pred x1))) (pred (pred x1))))))
(assert
 (=> (and (is-succ (pred x1)) (is-succ (pred (pred x1))))
  (not (= (pred (pred (pred x1))) (pred x1)))))
(assert
 (=> (and (is-succ x1) (is-succ (pred x1)) (is-succ (pred (pred x1))))
  (not (= (pred (pred (pred x1))) x1))))
(assert (=> (and (is-succ (pred x1))) (not (= (pred (pred x1)) (pred x1)))))
(assert
 (=> (and (is-succ x1) (is-succ (pred x1))) (not (= (pred (pred x1)) x1))))
(assert (=> (and (is-succ x1)) (not (= (pred x1) x1))))
(assert (=> (and (is-succ zero)) (not (= (pred zero) zero))))
(assert
 (=> (and (is-succ (pred zero))) (not (= (pred (pred zero)) (pred zero)))))
(assert
 (=> (and (is-succ zero) (is-succ (pred zero)))
  (not (= (pred (pred zero)) zero))))
(assert
 (=> (and (is-succ (pred (pred zero))))
  (not (= (pred (pred (pred zero))) (pred (pred zero))))))
(assert
 (=> (and (is-succ (pred zero)) (is-succ (pred (pred zero))))
  (not (= (pred (pred (pred zero))) (pred zero)))))
(assert
 (=> (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero))))
  (not (= (pred (pred (pred zero))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) (pred (pred (pred zero)))))))
(assert
 (=> (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred zero))))))
  (not
   (= (pred (pred (pred (pred (pred zero)))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred zero))))))
    (pred (pred (pred (pred (pred zero)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred zero))))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred zero))))))
    (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not (= (pred (pred (pred (pred (pred (pred zero)))))) (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not (= (pred (pred (pred (pred (pred (pred zero)))))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not (= (pred (pred (pred (pred (pred (pred zero)))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred (pred (pred (pred zero))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred (pred (pred zero)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred zero))))))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred zero))))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred (pred (pred (pred (pred (pred (pred zero)))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred (pred (pred (pred (pred (pred zero))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred (pred (pred (pred (pred zero)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred (pred zero))))))))
    (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero)))))))
   (is-succ (pred (pred (pred (pred (pred (pred (pred zero)))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred (pred zero)))))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred (pred (pred (pred zero))))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred (pred (pred zero)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not
   (= (pred (pred (pred (pred (pred (pred (pred zero)))))))
    (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred zero))))))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero))))))
   (is-succ (pred (pred (pred (pred (pred (pred zero))))))))
  (not (= (pred (pred (pred (pred (pred (pred (pred zero))))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred zero))))))
    (pred (pred (pred (pred (pred zero)))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred zero))))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not
   (= (pred (pred (pred (pred (pred (pred zero))))))
    (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not (= (pred (pred (pred (pred (pred (pred zero)))))) (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not (= (pred (pred (pred (pred (pred (pred zero)))))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero)))))
   (is-succ (pred (pred (pred (pred (pred zero)))))))
  (not (= (pred (pred (pred (pred (pred (pred zero)))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred (pred zero))))))
  (not
   (= (pred (pred (pred (pred (pred zero)))))
    (pred (pred (pred (pred zero))))))))
(assert
 (=>
  (and (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) (pred (pred (pred zero)))))))
(assert
 (=>
  (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero))))
   (is-succ (pred (pred (pred (pred zero))))))
  (not (= (pred (pred (pred (pred (pred zero))))) zero))))
(assert
 (=> (and (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) (pred (pred (pred zero)))))))
(assert
 (=> (and (is-succ (pred (pred zero))) (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) (pred (pred zero))))))
(assert
 (=>
  (and (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) (pred zero)))))
(assert
 (=>
  (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero)))
   (is-succ (pred (pred (pred zero)))))
  (not (= (pred (pred (pred (pred zero)))) zero))))
(assert
 (=> (and (is-succ (pred (pred zero))))
  (not (= (pred (pred (pred zero))) (pred (pred zero))))))
(assert
 (=> (and (is-succ (pred zero)) (is-succ (pred (pred zero))))
  (not (= (pred (pred (pred zero))) (pred zero)))))
(assert
 (=> (and (is-succ zero) (is-succ (pred zero)) (is-succ (pred (pred zero))))
  (not (= (pred (pred (pred zero))) zero))))
(assert
 (=> (and (is-succ (pred zero))) (not (= (pred (pred zero)) (pred zero)))))
(assert
 (=> (and (is-succ zero) (is-succ (pred zero)))
  (not (= (pred (pred zero)) zero))))
(assert (=> (and (is-succ zero)) (not (= (pred zero) zero))))
(check-sat)

