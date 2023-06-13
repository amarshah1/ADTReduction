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
(declare-fun x4 () nat)
(declare-fun x5 () nat)
(declare-fun x6 () list)
(declare-fun x7 () list)
(declare-fun x8 () list)
(declare-fun x9 () list)
(declare-fun x10 () list)
(declare-fun x11 () tree)
(declare-fun x12 () tree)
(declare-fun x13 () tree)
(declare-fun x14 () tree)
(declare-fun x15 () tree)
(declare-fun contrived_variable1 () nat)
(declare-fun contrived_variable0 () nat)
(assert (is-zero zero))
(assert (is-null null))
(assert
 (and (and (and (and (= x3 contrived_variable0) (= x1 contrived_variable1))
  (not ((_ is null) null))) (not (is-leaf x15))) (not (= x2 x1))))
(assert
 (and (= (succ x4) contrived_variable1) (is-succ contrived_variable1)
  (= (pred contrived_variable1) x4)))
(assert
 (and (= (succ x1) contrived_variable0) (is-succ contrived_variable0)
  (= (pred contrived_variable0) x1)))
(assert
 (or (and (is-cons x10) (not (is-null x10)))
  (and (not (is-cons x10)) (is-null x10))))
(assert (=> (is-null x10) (= x10 null)))
(assert
 (or (and (is-cons x9) (not (is-null x9)))
  (and (not (is-cons x9)) (is-null x9))))
(assert (=> (is-null x9) (= x9 null)))
(assert
 (or (and (is-cons x8) (not (is-null x8)))
  (and (not (is-cons x8)) (is-null x8))))
(assert (=> (is-null x8) (= x8 null)))
(assert
 (or (and (is-cons x7) (not (is-null x7)))
  (and (not (is-cons x7)) (is-null x7))))
(assert (=> (is-null x7) (= x7 null)))
(assert
 (or (and (is-cons x6) (not (is-null x6)))
  (and (not (is-cons x6)) (is-null x6))))
(assert (=> (is-null x6) (= x6 null)))
(assert
 (or (and (is-cons null) (not (is-null null)))
  (and (not (is-cons null)) (is-null null))))
(assert (=> (is-null null) (= null null)))
(assert
 (or (and (is-node x15) (not (is-leaf x15)))
  (and (not (is-node x15)) (is-leaf x15))))
(assert
 (or (and (is-node x14) (not (is-leaf x14)))
  (and (not (is-node x14)) (is-leaf x14))))
(assert
 (or (and (is-node x13) (not (is-leaf x13)))
  (and (not (is-node x13)) (is-leaf x13))))
(assert
 (or (and (is-node x12) (not (is-leaf x12)))
  (and (not (is-node x12)) (is-leaf x12))))
(assert
 (or (and (is-node x11) (not (is-leaf x11)))
  (and (not (is-node x11)) (is-leaf x11))))
(assert
 (or (and (is-succ contrived_variable0) (not (is-zero contrived_variable0)))
  (and (not (is-succ contrived_variable0)) (is-zero contrived_variable0))))
(assert (=> (is-zero contrived_variable0) (= contrived_variable0 zero)))
(assert
 (or (and (is-succ contrived_variable1) (not (is-zero contrived_variable1)))
  (and (not (is-succ contrived_variable1)) (is-zero contrived_variable1))))
(assert (=> (is-zero contrived_variable1) (= contrived_variable1 zero)))
(assert
 (or (and (is-succ x5) (not (is-zero x5)))
  (and (not (is-succ x5)) (is-zero x5))))
(assert (=> (is-zero x5) (= x5 zero)))
(assert
 (or (and (is-succ x4) (not (is-zero x4)))
  (and (not (is-succ x4)) (is-zero x4))))
(assert (=> (is-zero x4) (= x4 zero)))
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
(assert (not (= (children (car x10)) x10)))
(assert (not (= (car (children (car x10))) (car x10))))
(assert (not (= (children (car (children (car x10)))) (children (car x10)))))
(assert (not (= (children (car (children (car x10)))) x10)))
(assert
 (not
  (= (car (children (car (children (car x10))))) (car (children (car x10))))))
(assert (not (= (car (children (car (children (car x10))))) (car x10))))
(assert
 (not
  (= (children (car (children (car (children (car x10))))))
   (children (car (children (car x10)))))))
(assert
 (not
  (= (children (car (children (car (children (car x10))))))
   (children (car x10)))))
(assert (not (= (children (car (children (car (children (car x10)))))) x10)))
(assert
 (not
  (= (cdr (children (car (children (car x10)))))
   (children (car (children (car x10)))))))
(assert
 (not (= (cdr (children (car (children (car x10))))) (children (car x10)))))
(assert (not (= (cdr (children (car (children (car x10))))) x10)))
(assert
 (not
  (= (car (cdr (children (car (children (car x10))))))
   (car (children (car x10))))))
(assert (not (= (car (cdr (children (car (children (car x10)))))) (car x10))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x10))))))
   (cdr (children (car (children (car x10))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x10))))))
   (children (car (children (car x10)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x10)))))) (children (car x10)))))
(assert (not (= (cdr (cdr (children (car (children (car x10)))))) x10)))
(assert
 (not
  (= (pred (data (car (children (car x10)))))
   (data (car (children (car x10)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x10))))))
   (pred (data (car (children (car x10))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x10))))))
   (data (car (children (car x10)))))))
(assert (not (= (cdr (children (car x10))) (children (car x10)))))
(assert (not (= (cdr (children (car x10))) x10)))
(assert (not (= (car (cdr (children (car x10)))) (car x10))))
(assert
 (not
  (= (children (car (cdr (children (car x10))))) (cdr (children (car x10))))))
(assert
 (not (= (children (car (cdr (children (car x10))))) (children (car x10)))))
(assert (not (= (children (car (cdr (children (car x10))))) x10)))
(assert
 (not
  (= (car (children (car (cdr (children (car x10))))))
   (car (cdr (children (car x10)))))))
(assert (not (= (car (children (car (cdr (children (car x10)))))) (car x10))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x10))))))
   (children (car (cdr (children (car x10))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x10))))))
   (cdr (children (car x10))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x10)))))) (children (car x10)))))
(assert (not (= (cdr (children (car (cdr (children (car x10)))))) x10)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x10))))))
   (data (car (cdr (children (car x10))))))))
(assert (not (= (cdr (cdr (children (car x10)))) (cdr (children (car x10))))))
(assert (not (= (cdr (cdr (children (car x10)))) (children (car x10)))))
(assert (not (= (cdr (cdr (children (car x10)))) x10)))
(assert (not (= (car (cdr (cdr (children (car x10))))) (car x10))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x10))))))
   (cdr (cdr (children (car x10)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x10))))))
   (cdr (children (car x10))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x10)))))) (children (car x10)))))
(assert (not (= (children (car (cdr (cdr (children (car x10)))))) x10)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x10))))) (cdr (cdr (children (car x10)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x10))))) (cdr (children (car x10))))))
(assert (not (= (cdr (cdr (cdr (children (car x10))))) (children (car x10)))))
(assert (not (= (cdr (cdr (cdr (children (car x10))))) x10)))
(assert (not (= (car (cdr (cdr (cdr (children (car x10)))))) (car x10))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x10))))))
   (cdr (cdr (cdr (children (car x10))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x10))))))
   (cdr (cdr (children (car x10)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x10)))))) (cdr (children (car x10))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x10)))))) (children (car x10)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x10)))))) x10)))
(assert (not (= (pred (data (car x10))) (data (car x10)))))
(assert (not (= (pred (pred (data (car x10)))) (pred (data (car x10))))))
(assert (not (= (pred (pred (data (car x10)))) (data (car x10)))))
(assert
 (not
  (= (pred (pred (pred (data (car x10))))) (pred (pred (data (car x10)))))))
(assert
 (not (= (pred (pred (pred (data (car x10))))) (pred (data (car x10))))))
(assert (not (= (pred (pred (pred (data (car x10))))) (data (car x10)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x10))))))
   (pred (pred (pred (data (car x10))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x10))))))
   (pred (pred (data (car x10)))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x10)))))) (pred (data (car x10))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x10)))))) (data (car x10)))))
(assert (not (= (cdr x10) x10)))
(assert (not (= (children (car (cdr x10))) (cdr x10))))
(assert (not (= (children (car (cdr x10))) x10)))
(assert (not (= (car (children (car (cdr x10)))) (car (cdr x10)))))
(assert
 (not
  (= (children (car (children (car (cdr x10))))) (children (car (cdr x10))))))
(assert (not (= (children (car (children (car (cdr x10))))) (cdr x10))))
(assert (not (= (children (car (children (car (cdr x10))))) x10)))
(assert
 (not
  (= (car (children (car (children (car (cdr x10))))))
   (car (children (car (cdr x10)))))))
(assert
 (not (= (car (children (car (children (car (cdr x10)))))) (car (cdr x10)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x10))))))
   (children (car (children (car (cdr x10))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x10))))))
   (children (car (cdr x10))))))
(assert (not (= (cdr (children (car (children (car (cdr x10)))))) (cdr x10))))
(assert (not (= (cdr (children (car (children (car (cdr x10)))))) x10)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x10))))))
   (data (car (children (car (cdr x10))))))))
(assert (not (= (cdr (children (car (cdr x10)))) (children (car (cdr x10))))))
(assert (not (= (cdr (children (car (cdr x10)))) (cdr x10))))
(assert (not (= (cdr (children (car (cdr x10)))) x10)))
(assert (not (= (car (cdr (children (car (cdr x10))))) (car (cdr x10)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x10))))))
   (cdr (children (car (cdr x10)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x10))))))
   (children (car (cdr x10))))))
(assert (not (= (children (car (cdr (children (car (cdr x10)))))) (cdr x10))))
(assert (not (= (children (car (cdr (children (car (cdr x10)))))) x10)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x10))))) (cdr (children (car (cdr x10)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x10))))) (children (car (cdr x10))))))
(assert (not (= (cdr (cdr (children (car (cdr x10))))) (cdr x10))))
(assert (not (= (cdr (cdr (children (car (cdr x10))))) x10)))
(assert
 (not (= (car (cdr (cdr (children (car (cdr x10)))))) (car (cdr x10)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x10))))))
   (cdr (cdr (children (car (cdr x10))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x10))))))
   (cdr (children (car (cdr x10)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x10)))))) (children (car (cdr x10))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x10)))))) (cdr x10))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x10)))))) x10)))
(assert (not (= (pred (data (car (cdr x10)))) (data (car (cdr x10))))))
(assert
 (not (= (pred (pred (data (car (cdr x10))))) (pred (data (car (cdr x10)))))))
(assert (not (= (pred (pred (data (car (cdr x10))))) (data (car (cdr x10))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x10))))))
   (pred (pred (data (car (cdr x10))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x10))))))
   (pred (data (car (cdr x10)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x10)))))) (data (car (cdr x10))))))
(assert (not (= (cdr (cdr x10)) (cdr x10))))
(assert (not (= (cdr (cdr x10)) x10)))
(assert (not (= (children (car (cdr (cdr x10)))) (cdr (cdr x10)))))
(assert (not (= (children (car (cdr (cdr x10)))) (cdr x10))))
(assert (not (= (children (car (cdr (cdr x10)))) x10)))
(assert
 (not (= (car (children (car (cdr (cdr x10))))) (car (cdr (cdr x10))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x10))))))
   (children (car (cdr (cdr x10)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x10)))))) (cdr (cdr x10)))))
(assert (not (= (children (car (children (car (cdr (cdr x10)))))) (cdr x10))))
(assert (not (= (children (car (children (car (cdr (cdr x10)))))) x10)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x10))))) (children (car (cdr (cdr x10)))))))
(assert (not (= (cdr (children (car (cdr (cdr x10))))) (cdr (cdr x10)))))
(assert (not (= (cdr (children (car (cdr (cdr x10))))) (cdr x10))))
(assert (not (= (cdr (children (car (cdr (cdr x10))))) x10)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x10)))))) (car (cdr (cdr x10))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x10))))))
   (cdr (children (car (cdr (cdr x10))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x10))))))
   (children (car (cdr (cdr x10)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr (cdr x10)))))) (cdr (cdr x10)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x10)))))) (cdr x10))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x10)))))) x10)))
(assert
 (not (= (pred (data (car (cdr (cdr x10))))) (data (car (cdr (cdr x10)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x10))))))
   (pred (data (car (cdr (cdr x10))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x10)))))) (data (car (cdr (cdr x10)))))))
(assert (not (= (cdr (cdr (cdr x10))) (cdr (cdr x10)))))
(assert (not (= (cdr (cdr (cdr x10))) (cdr x10))))
(assert (not (= (cdr (cdr (cdr x10))) x10)))
(assert
 (not (= (children (car (cdr (cdr (cdr x10))))) (cdr (cdr (cdr x10))))))
(assert (not (= (children (car (cdr (cdr (cdr x10))))) (cdr (cdr x10)))))
(assert (not (= (children (car (cdr (cdr (cdr x10))))) (cdr x10))))
(assert (not (= (children (car (cdr (cdr (cdr x10))))) x10)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x10)))))) (car (cdr (cdr (cdr x10)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x10))))))
   (children (car (cdr (cdr (cdr x10))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x10)))))) (cdr (cdr (cdr x10))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x10)))))) (cdr (cdr x10)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x10)))))) (cdr x10))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x10)))))) x10)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x10))))))
   (data (car (cdr (cdr (cdr x10))))))))
(assert (not (= (cdr (cdr (cdr (cdr x10)))) (cdr (cdr (cdr x10))))))
(assert (not (= (cdr (cdr (cdr (cdr x10)))) (cdr (cdr x10)))))
(assert (not (= (cdr (cdr (cdr (cdr x10)))) (cdr x10))))
(assert (not (= (cdr (cdr (cdr (cdr x10)))) x10)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x10)))))) (cdr (cdr (cdr (cdr x10)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x10)))))) (cdr (cdr (cdr x10))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x10)))))) (cdr (cdr x10)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x10)))))) (cdr x10))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x10)))))) x10)))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr x10))))) (cdr (cdr (cdr (cdr x10)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x10))))) (cdr (cdr (cdr x10))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x10))))) (cdr (cdr x10)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x10))))) (cdr x10))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x10))))) x10)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x10))))))
   (cdr (cdr (cdr (cdr (cdr x10))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x10)))))) (cdr (cdr (cdr (cdr x10)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x10)))))) (cdr (cdr (cdr x10))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x10)))))) (cdr (cdr x10)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x10)))))) (cdr x10))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x10)))))) x10)))
(assert (not (= (children (car x9)) x9)))
(assert (not (= (car (children (car x9))) (car x9))))
(assert (not (= (children (car (children (car x9)))) (children (car x9)))))
(assert (not (= (children (car (children (car x9)))) x9)))
(assert
 (not
  (= (car (children (car (children (car x9))))) (car (children (car x9))))))
(assert (not (= (car (children (car (children (car x9))))) (car x9))))
(assert
 (not
  (= (children (car (children (car (children (car x9))))))
   (children (car (children (car x9)))))))
(assert
 (not
  (= (children (car (children (car (children (car x9))))))
   (children (car x9)))))
(assert (not (= (children (car (children (car (children (car x9)))))) x9)))
(assert
 (not
  (= (cdr (children (car (children (car x9)))))
   (children (car (children (car x9)))))))
(assert
 (not (= (cdr (children (car (children (car x9))))) (children (car x9)))))
(assert (not (= (cdr (children (car (children (car x9))))) x9)))
(assert
 (not
  (= (car (cdr (children (car (children (car x9))))))
   (car (children (car x9))))))
(assert (not (= (car (cdr (children (car (children (car x9)))))) (car x9))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x9))))))
   (cdr (children (car (children (car x9))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x9))))))
   (children (car (children (car x9)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x9)))))) (children (car x9)))))
(assert (not (= (cdr (cdr (children (car (children (car x9)))))) x9)))
(assert
 (not
  (= (pred (data (car (children (car x9))))) (data (car (children (car x9)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x9))))))
   (pred (data (car (children (car x9))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x9))))))
   (data (car (children (car x9)))))))
(assert (not (= (cdr (children (car x9))) (children (car x9)))))
(assert (not (= (cdr (children (car x9))) x9)))
(assert (not (= (car (cdr (children (car x9)))) (car x9))))
(assert
 (not
  (= (children (car (cdr (children (car x9))))) (cdr (children (car x9))))))
(assert
 (not (= (children (car (cdr (children (car x9))))) (children (car x9)))))
(assert (not (= (children (car (cdr (children (car x9))))) x9)))
(assert
 (not
  (= (car (children (car (cdr (children (car x9))))))
   (car (cdr (children (car x9)))))))
(assert (not (= (car (children (car (cdr (children (car x9)))))) (car x9))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x9))))))
   (children (car (cdr (children (car x9))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x9))))))
   (cdr (children (car x9))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x9)))))) (children (car x9)))))
(assert (not (= (cdr (children (car (cdr (children (car x9)))))) x9)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x9))))))
   (data (car (cdr (children (car x9))))))))
(assert (not (= (cdr (cdr (children (car x9)))) (cdr (children (car x9))))))
(assert (not (= (cdr (cdr (children (car x9)))) (children (car x9)))))
(assert (not (= (cdr (cdr (children (car x9)))) x9)))
(assert (not (= (car (cdr (cdr (children (car x9))))) (car x9))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x9))))))
   (cdr (cdr (children (car x9)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x9))))))
   (cdr (children (car x9))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x9)))))) (children (car x9)))))
(assert (not (= (children (car (cdr (cdr (children (car x9)))))) x9)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x9))))) (cdr (cdr (children (car x9)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x9))))) (cdr (children (car x9))))))
(assert (not (= (cdr (cdr (cdr (children (car x9))))) (children (car x9)))))
(assert (not (= (cdr (cdr (cdr (children (car x9))))) x9)))
(assert (not (= (car (cdr (cdr (cdr (children (car x9)))))) (car x9))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x9))))))
   (cdr (cdr (cdr (children (car x9))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x9))))))
   (cdr (cdr (children (car x9)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x9)))))) (cdr (children (car x9))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x9)))))) (children (car x9)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x9)))))) x9)))
(assert (not (= (pred (data (car x9))) (data (car x9)))))
(assert (not (= (pred (pred (data (car x9)))) (pred (data (car x9))))))
(assert (not (= (pred (pred (data (car x9)))) (data (car x9)))))
(assert
 (not (= (pred (pred (pred (data (car x9))))) (pred (pred (data (car x9)))))))
(assert (not (= (pred (pred (pred (data (car x9))))) (pred (data (car x9))))))
(assert (not (= (pred (pred (pred (data (car x9))))) (data (car x9)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x9))))))
   (pred (pred (pred (data (car x9))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x9))))))
   (pred (pred (data (car x9)))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x9)))))) (pred (data (car x9))))))
(assert (not (= (pred (pred (pred (pred (data (car x9)))))) (data (car x9)))))
(assert (not (= (cdr x9) x9)))
(assert (not (= (children (car (cdr x9))) (cdr x9))))
(assert (not (= (children (car (cdr x9))) x9)))
(assert (not (= (car (children (car (cdr x9)))) (car (cdr x9)))))
(assert
 (not
  (= (children (car (children (car (cdr x9))))) (children (car (cdr x9))))))
(assert (not (= (children (car (children (car (cdr x9))))) (cdr x9))))
(assert (not (= (children (car (children (car (cdr x9))))) x9)))
(assert
 (not
  (= (car (children (car (children (car (cdr x9))))))
   (car (children (car (cdr x9)))))))
(assert
 (not (= (car (children (car (children (car (cdr x9)))))) (car (cdr x9)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x9))))))
   (children (car (children (car (cdr x9))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x9))))))
   (children (car (cdr x9))))))
(assert (not (= (cdr (children (car (children (car (cdr x9)))))) (cdr x9))))
(assert (not (= (cdr (children (car (children (car (cdr x9)))))) x9)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x9))))))
   (data (car (children (car (cdr x9))))))))
(assert (not (= (cdr (children (car (cdr x9)))) (children (car (cdr x9))))))
(assert (not (= (cdr (children (car (cdr x9)))) (cdr x9))))
(assert (not (= (cdr (children (car (cdr x9)))) x9)))
(assert (not (= (car (cdr (children (car (cdr x9))))) (car (cdr x9)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x9))))))
   (cdr (children (car (cdr x9)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x9))))))
   (children (car (cdr x9))))))
(assert (not (= (children (car (cdr (children (car (cdr x9)))))) (cdr x9))))
(assert (not (= (children (car (cdr (children (car (cdr x9)))))) x9)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x9))))) (cdr (children (car (cdr x9)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x9))))) (children (car (cdr x9))))))
(assert (not (= (cdr (cdr (children (car (cdr x9))))) (cdr x9))))
(assert (not (= (cdr (cdr (children (car (cdr x9))))) x9)))
(assert (not (= (car (cdr (cdr (children (car (cdr x9)))))) (car (cdr x9)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x9))))))
   (cdr (cdr (children (car (cdr x9))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x9))))))
   (cdr (children (car (cdr x9)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x9)))))) (children (car (cdr x9))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x9)))))) (cdr x9))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x9)))))) x9)))
(assert (not (= (pred (data (car (cdr x9)))) (data (car (cdr x9))))))
(assert
 (not (= (pred (pred (data (car (cdr x9))))) (pred (data (car (cdr x9)))))))
(assert (not (= (pred (pred (data (car (cdr x9))))) (data (car (cdr x9))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x9))))))
   (pred (pred (data (car (cdr x9))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x9)))))) (pred (data (car (cdr x9)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x9)))))) (data (car (cdr x9))))))
(assert (not (= (cdr (cdr x9)) (cdr x9))))
(assert (not (= (cdr (cdr x9)) x9)))
(assert (not (= (children (car (cdr (cdr x9)))) (cdr (cdr x9)))))
(assert (not (= (children (car (cdr (cdr x9)))) (cdr x9))))
(assert (not (= (children (car (cdr (cdr x9)))) x9)))
(assert (not (= (car (children (car (cdr (cdr x9))))) (car (cdr (cdr x9))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x9))))))
   (children (car (cdr (cdr x9)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x9)))))) (cdr (cdr x9)))))
(assert (not (= (children (car (children (car (cdr (cdr x9)))))) (cdr x9))))
(assert (not (= (children (car (children (car (cdr (cdr x9)))))) x9)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x9))))) (children (car (cdr (cdr x9)))))))
(assert (not (= (cdr (children (car (cdr (cdr x9))))) (cdr (cdr x9)))))
(assert (not (= (cdr (children (car (cdr (cdr x9))))) (cdr x9))))
(assert (not (= (cdr (children (car (cdr (cdr x9))))) x9)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x9)))))) (car (cdr (cdr x9))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x9))))))
   (cdr (children (car (cdr (cdr x9))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x9))))))
   (children (car (cdr (cdr x9)))))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x9)))))) (cdr (cdr x9)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x9)))))) (cdr x9))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x9)))))) x9)))
(assert
 (not (= (pred (data (car (cdr (cdr x9))))) (data (car (cdr (cdr x9)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x9))))))
   (pred (data (car (cdr (cdr x9))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x9)))))) (data (car (cdr (cdr x9)))))))
(assert (not (= (cdr (cdr (cdr x9))) (cdr (cdr x9)))))
(assert (not (= (cdr (cdr (cdr x9))) (cdr x9))))
(assert (not (= (cdr (cdr (cdr x9))) x9)))
(assert (not (= (children (car (cdr (cdr (cdr x9))))) (cdr (cdr (cdr x9))))))
(assert (not (= (children (car (cdr (cdr (cdr x9))))) (cdr (cdr x9)))))
(assert (not (= (children (car (cdr (cdr (cdr x9))))) (cdr x9))))
(assert (not (= (children (car (cdr (cdr (cdr x9))))) x9)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x9)))))) (car (cdr (cdr (cdr x9)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x9))))))
   (children (car (cdr (cdr (cdr x9))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x9)))))) (cdr (cdr (cdr x9))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x9)))))) (cdr (cdr x9)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x9)))))) (cdr x9))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x9)))))) x9)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x9))))))
   (data (car (cdr (cdr (cdr x9))))))))
(assert (not (= (cdr (cdr (cdr (cdr x9)))) (cdr (cdr (cdr x9))))))
(assert (not (= (cdr (cdr (cdr (cdr x9)))) (cdr (cdr x9)))))
(assert (not (= (cdr (cdr (cdr (cdr x9)))) (cdr x9))))
(assert (not (= (cdr (cdr (cdr (cdr x9)))) x9)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr (cdr (cdr x9)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr (cdr x9))))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr x9)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x9)))))) (cdr x9))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x9)))))) x9)))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x9))))) (cdr (cdr (cdr (cdr x9)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x9))))) (cdr (cdr (cdr x9))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x9))))) (cdr (cdr x9)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x9))))) (cdr x9))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x9))))) x9)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr (cdr (cdr (cdr x9))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr (cdr (cdr x9)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr (cdr x9))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x9)))))) (cdr (cdr x9)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x9)))))) (cdr x9))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x9)))))) x9)))
(assert (not (= (children (car x8)) x8)))
(assert (not (= (car (children (car x8))) (car x8))))
(assert (not (= (children (car (children (car x8)))) (children (car x8)))))
(assert (not (= (children (car (children (car x8)))) x8)))
(assert
 (not
  (= (car (children (car (children (car x8))))) (car (children (car x8))))))
(assert (not (= (car (children (car (children (car x8))))) (car x8))))
(assert
 (not
  (= (children (car (children (car (children (car x8))))))
   (children (car (children (car x8)))))))
(assert
 (not
  (= (children (car (children (car (children (car x8))))))
   (children (car x8)))))
(assert (not (= (children (car (children (car (children (car x8)))))) x8)))
(assert
 (not
  (= (cdr (children (car (children (car x8)))))
   (children (car (children (car x8)))))))
(assert
 (not (= (cdr (children (car (children (car x8))))) (children (car x8)))))
(assert (not (= (cdr (children (car (children (car x8))))) x8)))
(assert
 (not
  (= (car (cdr (children (car (children (car x8))))))
   (car (children (car x8))))))
(assert (not (= (car (cdr (children (car (children (car x8)))))) (car x8))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x8))))))
   (cdr (children (car (children (car x8))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x8))))))
   (children (car (children (car x8)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x8)))))) (children (car x8)))))
(assert (not (= (cdr (cdr (children (car (children (car x8)))))) x8)))
(assert
 (not
  (= (pred (data (car (children (car x8))))) (data (car (children (car x8)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x8))))))
   (pred (data (car (children (car x8))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x8))))))
   (data (car (children (car x8)))))))
(assert (not (= (cdr (children (car x8))) (children (car x8)))))
(assert (not (= (cdr (children (car x8))) x8)))
(assert (not (= (car (cdr (children (car x8)))) (car x8))))
(assert
 (not
  (= (children (car (cdr (children (car x8))))) (cdr (children (car x8))))))
(assert
 (not (= (children (car (cdr (children (car x8))))) (children (car x8)))))
(assert (not (= (children (car (cdr (children (car x8))))) x8)))
(assert
 (not
  (= (car (children (car (cdr (children (car x8))))))
   (car (cdr (children (car x8)))))))
(assert (not (= (car (children (car (cdr (children (car x8)))))) (car x8))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x8))))))
   (children (car (cdr (children (car x8))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x8))))))
   (cdr (children (car x8))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x8)))))) (children (car x8)))))
(assert (not (= (cdr (children (car (cdr (children (car x8)))))) x8)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x8))))))
   (data (car (cdr (children (car x8))))))))
(assert (not (= (cdr (cdr (children (car x8)))) (cdr (children (car x8))))))
(assert (not (= (cdr (cdr (children (car x8)))) (children (car x8)))))
(assert (not (= (cdr (cdr (children (car x8)))) x8)))
(assert (not (= (car (cdr (cdr (children (car x8))))) (car x8))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x8))))))
   (cdr (cdr (children (car x8)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x8))))))
   (cdr (children (car x8))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x8)))))) (children (car x8)))))
(assert (not (= (children (car (cdr (cdr (children (car x8)))))) x8)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x8))))) (cdr (cdr (children (car x8)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x8))))) (cdr (children (car x8))))))
(assert (not (= (cdr (cdr (cdr (children (car x8))))) (children (car x8)))))
(assert (not (= (cdr (cdr (cdr (children (car x8))))) x8)))
(assert (not (= (car (cdr (cdr (cdr (children (car x8)))))) (car x8))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x8))))))
   (cdr (cdr (cdr (children (car x8))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x8))))))
   (cdr (cdr (children (car x8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x8)))))) (cdr (children (car x8))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x8)))))) (children (car x8)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x8)))))) x8)))
(assert (not (= (pred (data (car x8))) (data (car x8)))))
(assert (not (= (pred (pred (data (car x8)))) (pred (data (car x8))))))
(assert (not (= (pred (pred (data (car x8)))) (data (car x8)))))
(assert
 (not (= (pred (pred (pred (data (car x8))))) (pred (pred (data (car x8)))))))
(assert (not (= (pred (pred (pred (data (car x8))))) (pred (data (car x8))))))
(assert (not (= (pred (pred (pred (data (car x8))))) (data (car x8)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x8))))))
   (pred (pred (pred (data (car x8))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x8))))))
   (pred (pred (data (car x8)))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x8)))))) (pred (data (car x8))))))
(assert (not (= (pred (pred (pred (pred (data (car x8)))))) (data (car x8)))))
(assert (not (= (cdr x8) x8)))
(assert (not (= (children (car (cdr x8))) (cdr x8))))
(assert (not (= (children (car (cdr x8))) x8)))
(assert (not (= (car (children (car (cdr x8)))) (car (cdr x8)))))
(assert
 (not
  (= (children (car (children (car (cdr x8))))) (children (car (cdr x8))))))
(assert (not (= (children (car (children (car (cdr x8))))) (cdr x8))))
(assert (not (= (children (car (children (car (cdr x8))))) x8)))
(assert
 (not
  (= (car (children (car (children (car (cdr x8))))))
   (car (children (car (cdr x8)))))))
(assert
 (not (= (car (children (car (children (car (cdr x8)))))) (car (cdr x8)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x8))))))
   (children (car (children (car (cdr x8))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x8))))))
   (children (car (cdr x8))))))
(assert (not (= (cdr (children (car (children (car (cdr x8)))))) (cdr x8))))
(assert (not (= (cdr (children (car (children (car (cdr x8)))))) x8)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x8))))))
   (data (car (children (car (cdr x8))))))))
(assert (not (= (cdr (children (car (cdr x8)))) (children (car (cdr x8))))))
(assert (not (= (cdr (children (car (cdr x8)))) (cdr x8))))
(assert (not (= (cdr (children (car (cdr x8)))) x8)))
(assert (not (= (car (cdr (children (car (cdr x8))))) (car (cdr x8)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x8))))))
   (cdr (children (car (cdr x8)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x8))))))
   (children (car (cdr x8))))))
(assert (not (= (children (car (cdr (children (car (cdr x8)))))) (cdr x8))))
(assert (not (= (children (car (cdr (children (car (cdr x8)))))) x8)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x8))))) (cdr (children (car (cdr x8)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x8))))) (children (car (cdr x8))))))
(assert (not (= (cdr (cdr (children (car (cdr x8))))) (cdr x8))))
(assert (not (= (cdr (cdr (children (car (cdr x8))))) x8)))
(assert (not (= (car (cdr (cdr (children (car (cdr x8)))))) (car (cdr x8)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x8))))))
   (cdr (cdr (children (car (cdr x8))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x8))))))
   (cdr (children (car (cdr x8)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x8)))))) (children (car (cdr x8))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x8)))))) (cdr x8))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x8)))))) x8)))
(assert (not (= (pred (data (car (cdr x8)))) (data (car (cdr x8))))))
(assert
 (not (= (pred (pred (data (car (cdr x8))))) (pred (data (car (cdr x8)))))))
(assert (not (= (pred (pred (data (car (cdr x8))))) (data (car (cdr x8))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x8))))))
   (pred (pred (data (car (cdr x8))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x8)))))) (pred (data (car (cdr x8)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x8)))))) (data (car (cdr x8))))))
(assert (not (= (cdr (cdr x8)) (cdr x8))))
(assert (not (= (cdr (cdr x8)) x8)))
(assert (not (= (children (car (cdr (cdr x8)))) (cdr (cdr x8)))))
(assert (not (= (children (car (cdr (cdr x8)))) (cdr x8))))
(assert (not (= (children (car (cdr (cdr x8)))) x8)))
(assert (not (= (car (children (car (cdr (cdr x8))))) (car (cdr (cdr x8))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x8))))))
   (children (car (cdr (cdr x8)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x8)))))) (cdr (cdr x8)))))
(assert (not (= (children (car (children (car (cdr (cdr x8)))))) (cdr x8))))
(assert (not (= (children (car (children (car (cdr (cdr x8)))))) x8)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x8))))) (children (car (cdr (cdr x8)))))))
(assert (not (= (cdr (children (car (cdr (cdr x8))))) (cdr (cdr x8)))))
(assert (not (= (cdr (children (car (cdr (cdr x8))))) (cdr x8))))
(assert (not (= (cdr (children (car (cdr (cdr x8))))) x8)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x8)))))) (car (cdr (cdr x8))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x8))))))
   (cdr (children (car (cdr (cdr x8))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x8))))))
   (children (car (cdr (cdr x8)))))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x8)))))) (cdr (cdr x8)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x8)))))) (cdr x8))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x8)))))) x8)))
(assert
 (not (= (pred (data (car (cdr (cdr x8))))) (data (car (cdr (cdr x8)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x8))))))
   (pred (data (car (cdr (cdr x8))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x8)))))) (data (car (cdr (cdr x8)))))))
(assert (not (= (cdr (cdr (cdr x8))) (cdr (cdr x8)))))
(assert (not (= (cdr (cdr (cdr x8))) (cdr x8))))
(assert (not (= (cdr (cdr (cdr x8))) x8)))
(assert (not (= (children (car (cdr (cdr (cdr x8))))) (cdr (cdr (cdr x8))))))
(assert (not (= (children (car (cdr (cdr (cdr x8))))) (cdr (cdr x8)))))
(assert (not (= (children (car (cdr (cdr (cdr x8))))) (cdr x8))))
(assert (not (= (children (car (cdr (cdr (cdr x8))))) x8)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x8)))))) (car (cdr (cdr (cdr x8)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x8))))))
   (children (car (cdr (cdr (cdr x8))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x8)))))) (cdr (cdr (cdr x8))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x8)))))) (cdr (cdr x8)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x8)))))) (cdr x8))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x8)))))) x8)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x8))))))
   (data (car (cdr (cdr (cdr x8))))))))
(assert (not (= (cdr (cdr (cdr (cdr x8)))) (cdr (cdr (cdr x8))))))
(assert (not (= (cdr (cdr (cdr (cdr x8)))) (cdr (cdr x8)))))
(assert (not (= (cdr (cdr (cdr (cdr x8)))) (cdr x8))))
(assert (not (= (cdr (cdr (cdr (cdr x8)))) x8)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr (cdr (cdr x8)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr (cdr x8))))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr x8)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x8)))))) (cdr x8))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x8)))))) x8)))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x8))))) (cdr (cdr (cdr (cdr x8)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x8))))) (cdr (cdr (cdr x8))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x8))))) (cdr (cdr x8)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x8))))) (cdr x8))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x8))))) x8)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr (cdr (cdr (cdr x8))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr (cdr (cdr x8)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr (cdr x8))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x8)))))) (cdr (cdr x8)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x8)))))) (cdr x8))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x8)))))) x8)))
(assert (not (= (children (car x7)) x7)))
(assert (not (= (car (children (car x7))) (car x7))))
(assert (not (= (children (car (children (car x7)))) (children (car x7)))))
(assert (not (= (children (car (children (car x7)))) x7)))
(assert
 (not
  (= (car (children (car (children (car x7))))) (car (children (car x7))))))
(assert (not (= (car (children (car (children (car x7))))) (car x7))))
(assert
 (not
  (= (children (car (children (car (children (car x7))))))
   (children (car (children (car x7)))))))
(assert
 (not
  (= (children (car (children (car (children (car x7))))))
   (children (car x7)))))
(assert (not (= (children (car (children (car (children (car x7)))))) x7)))
(assert
 (not
  (= (cdr (children (car (children (car x7)))))
   (children (car (children (car x7)))))))
(assert
 (not (= (cdr (children (car (children (car x7))))) (children (car x7)))))
(assert (not (= (cdr (children (car (children (car x7))))) x7)))
(assert
 (not
  (= (car (cdr (children (car (children (car x7))))))
   (car (children (car x7))))))
(assert (not (= (car (cdr (children (car (children (car x7)))))) (car x7))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x7))))))
   (cdr (children (car (children (car x7))))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x7))))))
   (children (car (children (car x7)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children (car x7)))))) (children (car x7)))))
(assert (not (= (cdr (cdr (children (car (children (car x7)))))) x7)))
(assert
 (not
  (= (pred (data (car (children (car x7))))) (data (car (children (car x7)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x7))))))
   (pred (data (car (children (car x7))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x7))))))
   (data (car (children (car x7)))))))
(assert (not (= (cdr (children (car x7))) (children (car x7)))))
(assert (not (= (cdr (children (car x7))) x7)))
(assert (not (= (car (cdr (children (car x7)))) (car x7))))
(assert
 (not
  (= (children (car (cdr (children (car x7))))) (cdr (children (car x7))))))
(assert
 (not (= (children (car (cdr (children (car x7))))) (children (car x7)))))
(assert (not (= (children (car (cdr (children (car x7))))) x7)))
(assert
 (not
  (= (car (children (car (cdr (children (car x7))))))
   (car (cdr (children (car x7)))))))
(assert (not (= (car (children (car (cdr (children (car x7)))))) (car x7))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x7))))))
   (children (car (cdr (children (car x7))))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x7))))))
   (cdr (children (car x7))))))
(assert
 (not
  (= (cdr (children (car (cdr (children (car x7)))))) (children (car x7)))))
(assert (not (= (cdr (children (car (cdr (children (car x7)))))) x7)))
(assert
 (not
  (= (pred (data (car (cdr (children (car x7))))))
   (data (car (cdr (children (car x7))))))))
(assert (not (= (cdr (cdr (children (car x7)))) (cdr (children (car x7))))))
(assert (not (= (cdr (cdr (children (car x7)))) (children (car x7)))))
(assert (not (= (cdr (cdr (children (car x7)))) x7)))
(assert (not (= (car (cdr (cdr (children (car x7))))) (car x7))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x7))))))
   (cdr (cdr (children (car x7)))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x7))))))
   (cdr (children (car x7))))))
(assert
 (not
  (= (children (car (cdr (cdr (children (car x7)))))) (children (car x7)))))
(assert (not (= (children (car (cdr (cdr (children (car x7)))))) x7)))
(assert
 (not
  (= (cdr (cdr (cdr (children (car x7))))) (cdr (cdr (children (car x7)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x7))))) (cdr (children (car x7))))))
(assert (not (= (cdr (cdr (cdr (children (car x7))))) (children (car x7)))))
(assert (not (= (cdr (cdr (cdr (children (car x7))))) x7)))
(assert (not (= (car (cdr (cdr (cdr (children (car x7)))))) (car x7))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x7))))))
   (cdr (cdr (cdr (children (car x7))))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x7))))))
   (cdr (cdr (children (car x7)))))))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children (car x7)))))) (cdr (children (car x7))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children (car x7)))))) (children (car x7)))))
(assert (not (= (cdr (cdr (cdr (cdr (children (car x7)))))) x7)))
(assert (not (= (pred (data (car x7))) (data (car x7)))))
(assert (not (= (pred (pred (data (car x7)))) (pred (data (car x7))))))
(assert (not (= (pred (pred (data (car x7)))) (data (car x7)))))
(assert
 (not (= (pred (pred (pred (data (car x7))))) (pred (pred (data (car x7)))))))
(assert (not (= (pred (pred (pred (data (car x7))))) (pred (data (car x7))))))
(assert (not (= (pred (pred (pred (data (car x7))))) (data (car x7)))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x7))))))
   (pred (pred (pred (data (car x7))))))))
(assert
 (not
  (= (pred (pred (pred (pred (data (car x7))))))
   (pred (pred (data (car x7)))))))
(assert
 (not (= (pred (pred (pred (pred (data (car x7)))))) (pred (data (car x7))))))
(assert (not (= (pred (pred (pred (pred (data (car x7)))))) (data (car x7)))))
(assert (not (= (cdr x7) x7)))
(assert (not (= (children (car (cdr x7))) (cdr x7))))
(assert (not (= (children (car (cdr x7))) x7)))
(assert (not (= (car (children (car (cdr x7)))) (car (cdr x7)))))
(assert
 (not
  (= (children (car (children (car (cdr x7))))) (children (car (cdr x7))))))
(assert (not (= (children (car (children (car (cdr x7))))) (cdr x7))))
(assert (not (= (children (car (children (car (cdr x7))))) x7)))
(assert
 (not
  (= (car (children (car (children (car (cdr x7))))))
   (car (children (car (cdr x7)))))))
(assert
 (not (= (car (children (car (children (car (cdr x7)))))) (car (cdr x7)))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x7))))))
   (children (car (children (car (cdr x7))))))))
(assert
 (not
  (= (cdr (children (car (children (car (cdr x7))))))
   (children (car (cdr x7))))))
(assert (not (= (cdr (children (car (children (car (cdr x7)))))) (cdr x7))))
(assert (not (= (cdr (children (car (children (car (cdr x7)))))) x7)))
(assert
 (not
  (= (pred (data (car (children (car (cdr x7))))))
   (data (car (children (car (cdr x7))))))))
(assert (not (= (cdr (children (car (cdr x7)))) (children (car (cdr x7))))))
(assert (not (= (cdr (children (car (cdr x7)))) (cdr x7))))
(assert (not (= (cdr (children (car (cdr x7)))) x7)))
(assert (not (= (car (cdr (children (car (cdr x7))))) (car (cdr x7)))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x7))))))
   (cdr (children (car (cdr x7)))))))
(assert
 (not
  (= (children (car (cdr (children (car (cdr x7))))))
   (children (car (cdr x7))))))
(assert (not (= (children (car (cdr (children (car (cdr x7)))))) (cdr x7))))
(assert (not (= (children (car (cdr (children (car (cdr x7)))))) x7)))
(assert
 (not
  (= (cdr (cdr (children (car (cdr x7))))) (cdr (children (car (cdr x7)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x7))))) (children (car (cdr x7))))))
(assert (not (= (cdr (cdr (children (car (cdr x7))))) (cdr x7))))
(assert (not (= (cdr (cdr (children (car (cdr x7))))) x7)))
(assert (not (= (car (cdr (cdr (children (car (cdr x7)))))) (car (cdr x7)))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x7))))))
   (cdr (cdr (children (car (cdr x7))))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x7))))))
   (cdr (children (car (cdr x7)))))))
(assert
 (not
  (= (cdr (cdr (cdr (children (car (cdr x7)))))) (children (car (cdr x7))))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x7)))))) (cdr x7))))
(assert (not (= (cdr (cdr (cdr (children (car (cdr x7)))))) x7)))
(assert (not (= (pred (data (car (cdr x7)))) (data (car (cdr x7))))))
(assert
 (not (= (pred (pred (data (car (cdr x7))))) (pred (data (car (cdr x7)))))))
(assert (not (= (pred (pred (data (car (cdr x7))))) (data (car (cdr x7))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x7))))))
   (pred (pred (data (car (cdr x7))))))))
(assert
 (not
  (= (pred (pred (pred (data (car (cdr x7)))))) (pred (data (car (cdr x7)))))))
(assert
 (not (= (pred (pred (pred (data (car (cdr x7)))))) (data (car (cdr x7))))))
(assert (not (= (cdr (cdr x7)) (cdr x7))))
(assert (not (= (cdr (cdr x7)) x7)))
(assert (not (= (children (car (cdr (cdr x7)))) (cdr (cdr x7)))))
(assert (not (= (children (car (cdr (cdr x7)))) (cdr x7))))
(assert (not (= (children (car (cdr (cdr x7)))) x7)))
(assert (not (= (car (children (car (cdr (cdr x7))))) (car (cdr (cdr x7))))))
(assert
 (not
  (= (children (car (children (car (cdr (cdr x7))))))
   (children (car (cdr (cdr x7)))))))
(assert
 (not (= (children (car (children (car (cdr (cdr x7)))))) (cdr (cdr x7)))))
(assert (not (= (children (car (children (car (cdr (cdr x7)))))) (cdr x7))))
(assert (not (= (children (car (children (car (cdr (cdr x7)))))) x7)))
(assert
 (not
  (= (cdr (children (car (cdr (cdr x7))))) (children (car (cdr (cdr x7)))))))
(assert (not (= (cdr (children (car (cdr (cdr x7))))) (cdr (cdr x7)))))
(assert (not (= (cdr (children (car (cdr (cdr x7))))) (cdr x7))))
(assert (not (= (cdr (children (car (cdr (cdr x7))))) x7)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x7)))))) (car (cdr (cdr x7))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x7))))))
   (cdr (children (car (cdr (cdr x7))))))))
(assert
 (not
  (= (cdr (cdr (children (car (cdr (cdr x7))))))
   (children (car (cdr (cdr x7)))))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x7)))))) (cdr (cdr x7)))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x7)))))) (cdr x7))))
(assert (not (= (cdr (cdr (children (car (cdr (cdr x7)))))) x7)))
(assert
 (not (= (pred (data (car (cdr (cdr x7))))) (data (car (cdr (cdr x7)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x7))))))
   (pred (data (car (cdr (cdr x7))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x7)))))) (data (car (cdr (cdr x7)))))))
(assert (not (= (cdr (cdr (cdr x7))) (cdr (cdr x7)))))
(assert (not (= (cdr (cdr (cdr x7))) (cdr x7))))
(assert (not (= (cdr (cdr (cdr x7))) x7)))
(assert (not (= (children (car (cdr (cdr (cdr x7))))) (cdr (cdr (cdr x7))))))
(assert (not (= (children (car (cdr (cdr (cdr x7))))) (cdr (cdr x7)))))
(assert (not (= (children (car (cdr (cdr (cdr x7))))) (cdr x7))))
(assert (not (= (children (car (cdr (cdr (cdr x7))))) x7)))
(assert
 (not
  (= (car (children (car (cdr (cdr (cdr x7)))))) (car (cdr (cdr (cdr x7)))))))
(assert
 (not
  (= (cdr (children (car (cdr (cdr (cdr x7))))))
   (children (car (cdr (cdr (cdr x7))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x7)))))) (cdr (cdr (cdr x7))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x7)))))) (cdr (cdr x7)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x7)))))) (cdr x7))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x7)))))) x7)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x7))))))
   (data (car (cdr (cdr (cdr x7))))))))
(assert (not (= (cdr (cdr (cdr (cdr x7)))) (cdr (cdr (cdr x7))))))
(assert (not (= (cdr (cdr (cdr (cdr x7)))) (cdr (cdr x7)))))
(assert (not (= (cdr (cdr (cdr (cdr x7)))) (cdr x7))))
(assert (not (= (cdr (cdr (cdr (cdr x7)))) x7)))
(assert
 (not
  (= (children (car (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr (cdr (cdr x7)))))))
(assert
 (not (= (children (car (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr (cdr x7))))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr x7)))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x7)))))) (cdr x7))))
(assert (not (= (children (car (cdr (cdr (cdr (cdr x7)))))) x7)))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x7))))) (cdr (cdr (cdr (cdr x7)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x7))))) (cdr (cdr (cdr x7))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x7))))) (cdr (cdr x7)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x7))))) (cdr x7))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x7))))) x7)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr (cdr (cdr (cdr x7))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr (cdr (cdr x7)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr (cdr x7))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x7)))))) (cdr (cdr x7)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x7)))))) (cdr x7))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x7)))))) x7)))
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
  (= (pred (data (car (children (car x6))))) (data (car (children (car x6)))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x6))))))
   (pred (data (car (children (car x6))))))))
(assert
 (not
  (= (pred (pred (data (car (children (car x6))))))
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
  (= (pred (data (car (cdr (children (car x6))))))
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
  (= (cdr (cdr (cdr (children (car x6))))) (cdr (cdr (children (car x6)))))))
(assert
 (not (= (cdr (cdr (cdr (children (car x6))))) (cdr (children (car x6))))))
(assert (not (= (cdr (cdr (cdr (children (car x6))))) (children (car x6)))))
(assert (not (= (cdr (cdr (cdr (children (car x6))))) x6)))
(assert (not (= (car (cdr (cdr (cdr (children (car x6)))))) (car x6))))
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
  (= (pred (data (car (children (car (cdr x6))))))
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
  (= (cdr (cdr (children (car (cdr x6))))) (cdr (children (car (cdr x6)))))))
(assert
 (not (= (cdr (cdr (children (car (cdr x6))))) (children (car (cdr x6))))))
(assert (not (= (cdr (cdr (children (car (cdr x6))))) (cdr x6))))
(assert (not (= (cdr (cdr (children (car (cdr x6))))) x6)))
(assert (not (= (car (cdr (cdr (children (car (cdr x6)))))) (car (cdr x6)))))
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
  (= (cdr (children (car (cdr (cdr x6))))) (children (car (cdr (cdr x6)))))))
(assert (not (= (cdr (children (car (cdr (cdr x6))))) (cdr (cdr x6)))))
(assert (not (= (cdr (children (car (cdr (cdr x6))))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr (cdr x6))))) x6)))
(assert
 (not (= (car (cdr (children (car (cdr (cdr x6)))))) (car (cdr (cdr x6))))))
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
 (not (= (pred (data (car (cdr (cdr x6))))) (data (car (cdr (cdr x6)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x6))))))
   (pred (data (car (cdr (cdr x6))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr x6)))))) (data (car (cdr (cdr x6)))))))
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
  (= (cdr (children (car (cdr (cdr (cdr x6))))))
   (children (car (cdr (cdr (cdr x6))))))))
(assert
 (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (children (car (cdr (cdr (cdr x6)))))) x6)))
(assert
 (not
  (= (pred (data (car (cdr (cdr (cdr x6))))))
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
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr (cdr (cdr (cdr x6)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr x6))))) x6)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr (cdr (cdr x6))))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr (cdr x6)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr (cdr x6))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr (cdr x6)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) (cdr x6))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr (cdr x6)))))) x6)))
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
  (= (pred (data (car (cdr (children (car null))))))
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
  (= (pred (data (car (children (car (cdr null))))))
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
 (not (= (pred (data (car (cdr (cdr null))))) (data (car (cdr (cdr null)))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr null))))))
   (pred (data (car (cdr (cdr null))))))))
(assert
 (not
  (= (pred (pred (data (car (cdr (cdr null))))))
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
  (= (pred (data (car (cdr (cdr (cdr null))))))
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
 (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr (cdr (cdr null)))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr (cdr null))))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr (cdr null)))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) (cdr null))))
(assert (not (= (cdr (cdr (cdr (cdr (cdr null))))) null)))
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
(assert (not (= (car (children x15)) x15)))
(assert (not (= (children (car (children x15))) (children x15))))
(assert (not (= (car (children (car (children x15)))) (car (children x15)))))
(assert (not (= (car (children (car (children x15)))) x15)))
(assert
 (not
  (= (children (car (children (car (children x15)))))
   (children (car (children x15))))))
(assert
 (not (= (children (car (children (car (children x15))))) (children x15))))
(assert
 (not
  (= (cdr (children (car (children x15)))) (children (car (children x15))))))
(assert (not (= (cdr (children (car (children x15)))) (children x15))))
(assert
 (not (= (car (cdr (children (car (children x15))))) (car (children x15)))))
(assert (not (= (car (cdr (children (car (children x15))))) x15)))
(assert
 (not
  (= (cdr (cdr (children (car (children x15)))))
   (cdr (children (car (children x15)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x15)))))
   (children (car (children x15))))))
(assert (not (= (cdr (cdr (children (car (children x15))))) (children x15))))
(assert
 (not (= (pred (data (car (children x15)))) (data (car (children x15))))))
(assert
 (not
  (= (pred (pred (data (car (children x15)))))
   (pred (data (car (children x15)))))))
(assert
 (not
  (= (pred (pred (data (car (children x15))))) (data (car (children x15))))))
(assert (not (= (cdr (children x15)) (children x15))))
(assert (not (= (car (cdr (children x15))) x15)))
(assert (not (= (children (car (cdr (children x15)))) (cdr (children x15)))))
(assert (not (= (children (car (cdr (children x15)))) (children x15))))
(assert
 (not
  (= (car (children (car (cdr (children x15))))) (car (cdr (children x15))))))
(assert (not (= (car (children (car (cdr (children x15))))) x15)))
(assert
 (not
  (= (cdr (children (car (cdr (children x15)))))
   (children (car (cdr (children x15)))))))
(assert
 (not (= (cdr (children (car (cdr (children x15))))) (cdr (children x15)))))
(assert (not (= (cdr (children (car (cdr (children x15))))) (children x15))))
(assert
 (not
  (= (pred (data (car (cdr (children x15)))))
   (data (car (cdr (children x15)))))))
(assert (not (= (cdr (cdr (children x15))) (cdr (children x15)))))
(assert (not (= (cdr (cdr (children x15))) (children x15))))
(assert (not (= (car (cdr (cdr (children x15)))) x15)))
(assert
 (not
  (= (children (car (cdr (cdr (children x15))))) (cdr (cdr (children x15))))))
(assert
 (not (= (children (car (cdr (cdr (children x15))))) (cdr (children x15)))))
(assert (not (= (children (car (cdr (cdr (children x15))))) (children x15))))
(assert (not (= (cdr (cdr (cdr (children x15)))) (cdr (cdr (children x15))))))
(assert (not (= (cdr (cdr (cdr (children x15)))) (cdr (children x15)))))
(assert (not (= (cdr (cdr (cdr (children x15)))) (children x15))))
(assert (not (= (car (cdr (cdr (cdr (children x15))))) x15)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x15))))) (cdr (cdr (cdr (children x15)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x15))))) (cdr (cdr (children x15))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x15))))) (cdr (children x15)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x15))))) (children x15))))
(assert (not (= (pred (data x15)) (data x15))))
(assert (not (= (pred (pred (data x15))) (pred (data x15)))))
(assert (not (= (pred (pred (data x15))) (data x15))))
(assert (not (= (pred (pred (pred (data x15)))) (pred (pred (data x15))))))
(assert (not (= (pred (pred (pred (data x15)))) (pred (data x15)))))
(assert (not (= (pred (pred (pred (data x15)))) (data x15))))
(assert
 (not
  (= (pred (pred (pred (pred (data x15))))) (pred (pred (pred (data x15)))))))
(assert
 (not (= (pred (pred (pred (pred (data x15))))) (pred (pred (data x15))))))
(assert (not (= (pred (pred (pred (pred (data x15))))) (pred (data x15)))))
(assert (not (= (pred (pred (pred (pred (data x15))))) (data x15))))
(assert (not (= (car (children x14)) x14)))
(assert (not (= (children (car (children x14))) (children x14))))
(assert (not (= (car (children (car (children x14)))) (car (children x14)))))
(assert (not (= (car (children (car (children x14)))) x14)))
(assert
 (not
  (= (children (car (children (car (children x14)))))
   (children (car (children x14))))))
(assert
 (not (= (children (car (children (car (children x14))))) (children x14))))
(assert
 (not
  (= (cdr (children (car (children x14)))) (children (car (children x14))))))
(assert (not (= (cdr (children (car (children x14)))) (children x14))))
(assert
 (not (= (car (cdr (children (car (children x14))))) (car (children x14)))))
(assert (not (= (car (cdr (children (car (children x14))))) x14)))
(assert
 (not
  (= (cdr (cdr (children (car (children x14)))))
   (cdr (children (car (children x14)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x14)))))
   (children (car (children x14))))))
(assert (not (= (cdr (cdr (children (car (children x14))))) (children x14))))
(assert
 (not (= (pred (data (car (children x14)))) (data (car (children x14))))))
(assert
 (not
  (= (pred (pred (data (car (children x14)))))
   (pred (data (car (children x14)))))))
(assert
 (not
  (= (pred (pred (data (car (children x14))))) (data (car (children x14))))))
(assert (not (= (cdr (children x14)) (children x14))))
(assert (not (= (car (cdr (children x14))) x14)))
(assert (not (= (children (car (cdr (children x14)))) (cdr (children x14)))))
(assert (not (= (children (car (cdr (children x14)))) (children x14))))
(assert
 (not
  (= (car (children (car (cdr (children x14))))) (car (cdr (children x14))))))
(assert (not (= (car (children (car (cdr (children x14))))) x14)))
(assert
 (not
  (= (cdr (children (car (cdr (children x14)))))
   (children (car (cdr (children x14)))))))
(assert
 (not (= (cdr (children (car (cdr (children x14))))) (cdr (children x14)))))
(assert (not (= (cdr (children (car (cdr (children x14))))) (children x14))))
(assert
 (not
  (= (pred (data (car (cdr (children x14)))))
   (data (car (cdr (children x14)))))))
(assert (not (= (cdr (cdr (children x14))) (cdr (children x14)))))
(assert (not (= (cdr (cdr (children x14))) (children x14))))
(assert (not (= (car (cdr (cdr (children x14)))) x14)))
(assert
 (not
  (= (children (car (cdr (cdr (children x14))))) (cdr (cdr (children x14))))))
(assert
 (not (= (children (car (cdr (cdr (children x14))))) (cdr (children x14)))))
(assert (not (= (children (car (cdr (cdr (children x14))))) (children x14))))
(assert (not (= (cdr (cdr (cdr (children x14)))) (cdr (cdr (children x14))))))
(assert (not (= (cdr (cdr (cdr (children x14)))) (cdr (children x14)))))
(assert (not (= (cdr (cdr (cdr (children x14)))) (children x14))))
(assert (not (= (car (cdr (cdr (cdr (children x14))))) x14)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x14))))) (cdr (cdr (cdr (children x14)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x14))))) (cdr (cdr (children x14))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x14))))) (cdr (children x14)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x14))))) (children x14))))
(assert (not (= (pred (data x14)) (data x14))))
(assert (not (= (pred (pred (data x14))) (pred (data x14)))))
(assert (not (= (pred (pred (data x14))) (data x14))))
(assert (not (= (pred (pred (pred (data x14)))) (pred (pred (data x14))))))
(assert (not (= (pred (pred (pred (data x14)))) (pred (data x14)))))
(assert (not (= (pred (pred (pred (data x14)))) (data x14))))
(assert
 (not
  (= (pred (pred (pred (pred (data x14))))) (pred (pred (pred (data x14)))))))
(assert
 (not (= (pred (pred (pred (pred (data x14))))) (pred (pred (data x14))))))
(assert (not (= (pred (pred (pred (pred (data x14))))) (pred (data x14)))))
(assert (not (= (pred (pred (pred (pred (data x14))))) (data x14))))
(assert (not (= (car (children x13)) x13)))
(assert (not (= (children (car (children x13))) (children x13))))
(assert (not (= (car (children (car (children x13)))) (car (children x13)))))
(assert (not (= (car (children (car (children x13)))) x13)))
(assert
 (not
  (= (children (car (children (car (children x13)))))
   (children (car (children x13))))))
(assert
 (not (= (children (car (children (car (children x13))))) (children x13))))
(assert
 (not
  (= (cdr (children (car (children x13)))) (children (car (children x13))))))
(assert (not (= (cdr (children (car (children x13)))) (children x13))))
(assert
 (not (= (car (cdr (children (car (children x13))))) (car (children x13)))))
(assert (not (= (car (cdr (children (car (children x13))))) x13)))
(assert
 (not
  (= (cdr (cdr (children (car (children x13)))))
   (cdr (children (car (children x13)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x13)))))
   (children (car (children x13))))))
(assert (not (= (cdr (cdr (children (car (children x13))))) (children x13))))
(assert
 (not (= (pred (data (car (children x13)))) (data (car (children x13))))))
(assert
 (not
  (= (pred (pred (data (car (children x13)))))
   (pred (data (car (children x13)))))))
(assert
 (not
  (= (pred (pred (data (car (children x13))))) (data (car (children x13))))))
(assert (not (= (cdr (children x13)) (children x13))))
(assert (not (= (car (cdr (children x13))) x13)))
(assert (not (= (children (car (cdr (children x13)))) (cdr (children x13)))))
(assert (not (= (children (car (cdr (children x13)))) (children x13))))
(assert
 (not
  (= (car (children (car (cdr (children x13))))) (car (cdr (children x13))))))
(assert (not (= (car (children (car (cdr (children x13))))) x13)))
(assert
 (not
  (= (cdr (children (car (cdr (children x13)))))
   (children (car (cdr (children x13)))))))
(assert
 (not (= (cdr (children (car (cdr (children x13))))) (cdr (children x13)))))
(assert (not (= (cdr (children (car (cdr (children x13))))) (children x13))))
(assert
 (not
  (= (pred (data (car (cdr (children x13)))))
   (data (car (cdr (children x13)))))))
(assert (not (= (cdr (cdr (children x13))) (cdr (children x13)))))
(assert (not (= (cdr (cdr (children x13))) (children x13))))
(assert (not (= (car (cdr (cdr (children x13)))) x13)))
(assert
 (not
  (= (children (car (cdr (cdr (children x13))))) (cdr (cdr (children x13))))))
(assert
 (not (= (children (car (cdr (cdr (children x13))))) (cdr (children x13)))))
(assert (not (= (children (car (cdr (cdr (children x13))))) (children x13))))
(assert (not (= (cdr (cdr (cdr (children x13)))) (cdr (cdr (children x13))))))
(assert (not (= (cdr (cdr (cdr (children x13)))) (cdr (children x13)))))
(assert (not (= (cdr (cdr (cdr (children x13)))) (children x13))))
(assert (not (= (car (cdr (cdr (cdr (children x13))))) x13)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x13))))) (cdr (cdr (cdr (children x13)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x13))))) (cdr (cdr (children x13))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x13))))) (cdr (children x13)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x13))))) (children x13))))
(assert (not (= (pred (data x13)) (data x13))))
(assert (not (= (pred (pred (data x13))) (pred (data x13)))))
(assert (not (= (pred (pred (data x13))) (data x13))))
(assert (not (= (pred (pred (pred (data x13)))) (pred (pred (data x13))))))
(assert (not (= (pred (pred (pred (data x13)))) (pred (data x13)))))
(assert (not (= (pred (pred (pred (data x13)))) (data x13))))
(assert
 (not
  (= (pred (pred (pred (pred (data x13))))) (pred (pred (pred (data x13)))))))
(assert
 (not (= (pred (pred (pred (pred (data x13))))) (pred (pred (data x13))))))
(assert (not (= (pred (pred (pred (pred (data x13))))) (pred (data x13)))))
(assert (not (= (pred (pred (pred (pred (data x13))))) (data x13))))
(assert (not (= (car (children x12)) x12)))
(assert (not (= (children (car (children x12))) (children x12))))
(assert (not (= (car (children (car (children x12)))) (car (children x12)))))
(assert (not (= (car (children (car (children x12)))) x12)))
(assert
 (not
  (= (children (car (children (car (children x12)))))
   (children (car (children x12))))))
(assert
 (not (= (children (car (children (car (children x12))))) (children x12))))
(assert
 (not
  (= (cdr (children (car (children x12)))) (children (car (children x12))))))
(assert (not (= (cdr (children (car (children x12)))) (children x12))))
(assert
 (not (= (car (cdr (children (car (children x12))))) (car (children x12)))))
(assert (not (= (car (cdr (children (car (children x12))))) x12)))
(assert
 (not
  (= (cdr (cdr (children (car (children x12)))))
   (cdr (children (car (children x12)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x12)))))
   (children (car (children x12))))))
(assert (not (= (cdr (cdr (children (car (children x12))))) (children x12))))
(assert
 (not (= (pred (data (car (children x12)))) (data (car (children x12))))))
(assert
 (not
  (= (pred (pred (data (car (children x12)))))
   (pred (data (car (children x12)))))))
(assert
 (not
  (= (pred (pred (data (car (children x12))))) (data (car (children x12))))))
(assert (not (= (cdr (children x12)) (children x12))))
(assert (not (= (car (cdr (children x12))) x12)))
(assert (not (= (children (car (cdr (children x12)))) (cdr (children x12)))))
(assert (not (= (children (car (cdr (children x12)))) (children x12))))
(assert
 (not
  (= (car (children (car (cdr (children x12))))) (car (cdr (children x12))))))
(assert (not (= (car (children (car (cdr (children x12))))) x12)))
(assert
 (not
  (= (cdr (children (car (cdr (children x12)))))
   (children (car (cdr (children x12)))))))
(assert
 (not (= (cdr (children (car (cdr (children x12))))) (cdr (children x12)))))
(assert (not (= (cdr (children (car (cdr (children x12))))) (children x12))))
(assert
 (not
  (= (pred (data (car (cdr (children x12)))))
   (data (car (cdr (children x12)))))))
(assert (not (= (cdr (cdr (children x12))) (cdr (children x12)))))
(assert (not (= (cdr (cdr (children x12))) (children x12))))
(assert (not (= (car (cdr (cdr (children x12)))) x12)))
(assert
 (not
  (= (children (car (cdr (cdr (children x12))))) (cdr (cdr (children x12))))))
(assert
 (not (= (children (car (cdr (cdr (children x12))))) (cdr (children x12)))))
(assert (not (= (children (car (cdr (cdr (children x12))))) (children x12))))
(assert (not (= (cdr (cdr (cdr (children x12)))) (cdr (cdr (children x12))))))
(assert (not (= (cdr (cdr (cdr (children x12)))) (cdr (children x12)))))
(assert (not (= (cdr (cdr (cdr (children x12)))) (children x12))))
(assert (not (= (car (cdr (cdr (cdr (children x12))))) x12)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x12))))) (cdr (cdr (cdr (children x12)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x12))))) (cdr (cdr (children x12))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x12))))) (cdr (children x12)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x12))))) (children x12))))
(assert (not (= (pred (data x12)) (data x12))))
(assert (not (= (pred (pred (data x12))) (pred (data x12)))))
(assert (not (= (pred (pred (data x12))) (data x12))))
(assert (not (= (pred (pred (pred (data x12)))) (pred (pred (data x12))))))
(assert (not (= (pred (pred (pred (data x12)))) (pred (data x12)))))
(assert (not (= (pred (pred (pred (data x12)))) (data x12))))
(assert
 (not
  (= (pred (pred (pred (pred (data x12))))) (pred (pred (pred (data x12)))))))
(assert
 (not (= (pred (pred (pred (pred (data x12))))) (pred (pred (data x12))))))
(assert (not (= (pred (pred (pred (pred (data x12))))) (pred (data x12)))))
(assert (not (= (pred (pred (pred (pred (data x12))))) (data x12))))
(assert (not (= (car (children x11)) x11)))
(assert (not (= (children (car (children x11))) (children x11))))
(assert (not (= (car (children (car (children x11)))) (car (children x11)))))
(assert (not (= (car (children (car (children x11)))) x11)))
(assert
 (not
  (= (children (car (children (car (children x11)))))
   (children (car (children x11))))))
(assert
 (not (= (children (car (children (car (children x11))))) (children x11))))
(assert
 (not
  (= (cdr (children (car (children x11)))) (children (car (children x11))))))
(assert (not (= (cdr (children (car (children x11)))) (children x11))))
(assert
 (not (= (car (cdr (children (car (children x11))))) (car (children x11)))))
(assert (not (= (car (cdr (children (car (children x11))))) x11)))
(assert
 (not
  (= (cdr (cdr (children (car (children x11)))))
   (cdr (children (car (children x11)))))))
(assert
 (not
  (= (cdr (cdr (children (car (children x11)))))
   (children (car (children x11))))))
(assert (not (= (cdr (cdr (children (car (children x11))))) (children x11))))
(assert
 (not (= (pred (data (car (children x11)))) (data (car (children x11))))))
(assert
 (not
  (= (pred (pred (data (car (children x11)))))
   (pred (data (car (children x11)))))))
(assert
 (not
  (= (pred (pred (data (car (children x11))))) (data (car (children x11))))))
(assert (not (= (cdr (children x11)) (children x11))))
(assert (not (= (car (cdr (children x11))) x11)))
(assert (not (= (children (car (cdr (children x11)))) (cdr (children x11)))))
(assert (not (= (children (car (cdr (children x11)))) (children x11))))
(assert
 (not
  (= (car (children (car (cdr (children x11))))) (car (cdr (children x11))))))
(assert (not (= (car (children (car (cdr (children x11))))) x11)))
(assert
 (not
  (= (cdr (children (car (cdr (children x11)))))
   (children (car (cdr (children x11)))))))
(assert
 (not (= (cdr (children (car (cdr (children x11))))) (cdr (children x11)))))
(assert (not (= (cdr (children (car (cdr (children x11))))) (children x11))))
(assert
 (not
  (= (pred (data (car (cdr (children x11)))))
   (data (car (cdr (children x11)))))))
(assert (not (= (cdr (cdr (children x11))) (cdr (children x11)))))
(assert (not (= (cdr (cdr (children x11))) (children x11))))
(assert (not (= (car (cdr (cdr (children x11)))) x11)))
(assert
 (not
  (= (children (car (cdr (cdr (children x11))))) (cdr (cdr (children x11))))))
(assert
 (not (= (children (car (cdr (cdr (children x11))))) (cdr (children x11)))))
(assert (not (= (children (car (cdr (cdr (children x11))))) (children x11))))
(assert (not (= (cdr (cdr (cdr (children x11)))) (cdr (cdr (children x11))))))
(assert (not (= (cdr (cdr (cdr (children x11)))) (cdr (children x11)))))
(assert (not (= (cdr (cdr (cdr (children x11)))) (children x11))))
(assert (not (= (car (cdr (cdr (cdr (children x11))))) x11)))
(assert
 (not
  (= (cdr (cdr (cdr (cdr (children x11))))) (cdr (cdr (cdr (children x11)))))))
(assert
 (not (= (cdr (cdr (cdr (cdr (children x11))))) (cdr (cdr (children x11))))))
(assert (not (= (cdr (cdr (cdr (cdr (children x11))))) (cdr (children x11)))))
(assert (not (= (cdr (cdr (cdr (cdr (children x11))))) (children x11))))
(assert (not (= (pred (data x11)) (data x11))))
(assert (not (= (pred (pred (data x11))) (pred (data x11)))))
(assert (not (= (pred (pred (data x11))) (data x11))))
(assert (not (= (pred (pred (pred (data x11)))) (pred (pred (data x11))))))
(assert (not (= (pred (pred (pred (data x11)))) (pred (data x11)))))
(assert (not (= (pred (pred (pred (data x11)))) (data x11))))
(assert
 (not
  (= (pred (pred (pred (pred (data x11))))) (pred (pred (pred (data x11)))))))
(assert
 (not (= (pred (pred (pred (pred (data x11))))) (pred (pred (data x11))))))
(assert (not (= (pred (pred (pred (pred (data x11))))) (pred (data x11)))))
(assert (not (= (pred (pred (pred (pred (data x11))))) (data x11))))
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
(assert (not (= (pred x5) x5)))
(assert (not (= (pred (pred x5)) (pred x5))))
(assert (not (= (pred (pred x5)) x5)))
(assert (not (= (pred (pred (pred x5))) (pred (pred x5)))))
(assert (not (= (pred (pred (pred x5))) (pred x5))))
(assert (not (= (pred (pred (pred x5))) x5)))
(assert (not (= (pred (pred (pred (pred x5)))) (pred (pred (pred x5))))))
(assert (not (= (pred (pred (pred (pred x5)))) (pred (pred x5)))))
(assert (not (= (pred (pred (pred (pred x5)))) (pred x5))))
(assert (not (= (pred (pred (pred (pred x5)))) x5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred x5))))) (pred (pred (pred (pred x5)))))))
(assert
 (not (= (pred (pred (pred (pred (pred x5))))) (pred (pred (pred x5))))))
(assert (not (= (pred (pred (pred (pred (pred x5))))) (pred (pred x5)))))
(assert (not (= (pred (pred (pred (pred (pred x5))))) (pred x5))))
(assert (not (= (pred (pred (pred (pred (pred x5))))) x5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x5))))))
   (pred (pred (pred (pred (pred x5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x5))))))
   (pred (pred (pred (pred x5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x5)))))) (pred (pred (pred x5))))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred x5)))))) (pred (pred x5)))))
(assert (not (= (pred (pred (pred (pred (pred (pred x5)))))) (pred x5))))
(assert (not (= (pred (pred (pred (pred (pred (pred x5)))))) x5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x5)))))))
   (pred (pred (pred (pred (pred (pred x5)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x5)))))))
   (pred (pred (pred (pred (pred x5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x5)))))))
   (pred (pred (pred (pred x5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x5)))))))
   (pred (pred (pred x5))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x5))))))) (pred (pred x5)))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred x5))))))) (pred x5))))
(assert (not (= (pred (pred (pred (pred (pred (pred (pred x5))))))) x5)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5))))))))
   (pred (pred (pred (pred (pred (pred (pred x5))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5))))))))
   (pred (pred (pred (pred (pred (pred x5)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5))))))))
   (pred (pred (pred (pred (pred x5))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5))))))))
   (pred (pred (pred (pred x5)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5))))))))
   (pred (pred (pred x5))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5))))))))
   (pred (pred x5)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x5)))))))) (pred x5))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred (pred x5)))))))) x5)))
(assert (not (= (pred x4) x4)))
(assert (not (= (pred (pred x4)) (pred x4))))
(assert (not (= (pred (pred x4)) x4)))
(assert (not (= (pred (pred (pred x4))) (pred (pred x4)))))
(assert (not (= (pred (pred (pred x4))) (pred x4))))
(assert (not (= (pred (pred (pred x4))) x4)))
(assert (not (= (pred (pred (pred (pred x4)))) (pred (pred (pred x4))))))
(assert (not (= (pred (pred (pred (pred x4)))) (pred (pred x4)))))
(assert (not (= (pred (pred (pred (pred x4)))) (pred x4))))
(assert (not (= (pred (pred (pred (pred x4)))) x4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred x4))))) (pred (pred (pred (pred x4)))))))
(assert
 (not (= (pred (pred (pred (pred (pred x4))))) (pred (pred (pred x4))))))
(assert (not (= (pred (pred (pred (pred (pred x4))))) (pred (pred x4)))))
(assert (not (= (pred (pred (pred (pred (pred x4))))) (pred x4))))
(assert (not (= (pred (pred (pred (pred (pred x4))))) x4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x4))))))
   (pred (pred (pred (pred (pred x4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x4))))))
   (pred (pred (pred (pred x4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred x4)))))) (pred (pred (pred x4))))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred x4)))))) (pred (pred x4)))))
(assert (not (= (pred (pred (pred (pred (pred (pred x4)))))) (pred x4))))
(assert (not (= (pred (pred (pred (pred (pred (pred x4)))))) x4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x4)))))))
   (pred (pred (pred (pred (pred (pred x4)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x4)))))))
   (pred (pred (pred (pred (pred x4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x4)))))))
   (pred (pred (pred (pred x4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x4)))))))
   (pred (pred (pred x4))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x4))))))) (pred (pred x4)))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred x4))))))) (pred x4))))
(assert (not (= (pred (pred (pred (pred (pred (pred (pred x4))))))) x4)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4))))))))
   (pred (pred (pred (pred (pred (pred (pred x4))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4))))))))
   (pred (pred (pred (pred (pred (pred x4)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4))))))))
   (pred (pred (pred (pred (pred x4))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4))))))))
   (pred (pred (pred (pred x4)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4))))))))
   (pred (pred (pred x4))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4))))))))
   (pred (pred x4)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x4)))))))) (pred x4))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred (pred x4)))))))) x4)))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x3)))))))
   (pred (pred (pred (pred (pred (pred x3)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x3)))))))
   (pred (pred (pred (pred (pred x3))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x3)))))))
   (pred (pred (pred (pred x3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x3)))))))
   (pred (pred (pred x3))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred x3))))))) (pred (pred x3)))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred x3))))))) (pred x3))))
(assert (not (= (pred (pred (pred (pred (pred (pred (pred x3))))))) x3)))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3))))))))
   (pred (pred (pred (pred (pred (pred (pred x3))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3))))))))
   (pred (pred (pred (pred (pred (pred x3)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3))))))))
   (pred (pred (pred (pred (pred x3))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3))))))))
   (pred (pred (pred (pred x3)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3))))))))
   (pred (pred (pred x3))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3))))))))
   (pred (pred x3)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x3)))))))) (pred x3))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred (pred x3)))))))) x3)))
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
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2))))))))
   (pred (pred (pred (pred (pred (pred (pred x2))))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2))))))))
   (pred (pred (pred (pred (pred (pred x2)))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2))))))))
   (pred (pred (pred (pred (pred x2))))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2))))))))
   (pred (pred (pred (pred x2)))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2))))))))
   (pred (pred (pred x2))))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2))))))))
   (pred (pred x2)))))
(assert
 (not
  (= (pred (pred (pred (pred (pred (pred (pred (pred x2)))))))) (pred x2))))
(assert
 (not (= (pred (pred (pred (pred (pred (pred (pred (pred x2)))))))) x2)))
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

