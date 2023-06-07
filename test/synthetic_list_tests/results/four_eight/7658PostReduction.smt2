(set-logic UFLRA)
(declare-sort MyList 0)
(declare-fun Nil () MyList)
(declare-fun is-Nil (MyList) Bool)
(assert (is-Nil Nil))
(declare-fun Cons (Real MyList) MyList)
(declare-fun is-Cons (MyList) Bool)
(declare-fun Head (MyList) Real)
(declare-fun Tail (MyList) MyList)
(declare-fun l0 () MyList)
(declare-fun l1 () MyList)
(declare-fun l2 () MyList)
(declare-fun l3 () MyList)
(declare-fun i0 () Real)
(declare-fun i1 () Real)
(assert (is-Nil Nil))
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 Nil) (= l1 l0)))
(assert (is-Cons Nil))
(assert (or (= l0 l3) (= l3 Nil) (= l1 Nil)))
(assert (is-Nil Nil))
(assert (= l2 l1))
(assert (or (= l3 l1) (is-Cons Nil) (= l3 l0) (= l1 l2)))
(assert (is-Nil Nil))
(assert
 (or (and (is-Nil l3) (not (is-Cons l3)))
  (and (not (is-Nil l3)) (is-Cons l3))))
(assert (=> (is-Nil l3) (= l3 Nil)))
(assert
 (or (and (is-Nil l2) (not (is-Cons l2)))
  (and (not (is-Nil l2)) (is-Cons l2))))
(assert (=> (is-Nil l2) (= l2 Nil)))
(assert
 (or (and (is-Nil l1) (not (is-Cons l1)))
  (and (not (is-Nil l1)) (is-Cons l1))))
(assert (=> (is-Nil l1) (= l1 Nil)))
(assert
 (or (and (is-Nil l0) (not (is-Cons l0)))
  (and (not (is-Nil l0)) (is-Cons l0))))
(assert (=> (is-Nil l0) (= l0 Nil)))
(assert
 (or (and (is-Nil Nil) (not (is-Cons Nil)))
  (and (not (is-Nil Nil)) (is-Cons Nil))))
(assert (=> (is-Nil Nil) (= Nil Nil)))
(assert (not (= (Tail l3) l3)))
(assert (not (= (Tail (Tail l3)) (Tail l3))))
(assert (not (= (Tail (Tail l3)) l3)))
(assert (not (= (Tail (Tail (Tail l3))) (Tail (Tail l3)))))
(assert (not (= (Tail (Tail (Tail l3))) (Tail l3))))
(assert (not (= (Tail (Tail (Tail l3))) l3)))
(assert (not (= (Tail (Tail (Tail (Tail l3)))) (Tail (Tail (Tail l3))))))
(assert (not (= (Tail (Tail (Tail (Tail l3)))) (Tail (Tail l3)))))
(assert (not (= (Tail (Tail (Tail (Tail l3)))) (Tail l3))))
(assert (not (= (Tail (Tail (Tail (Tail l3)))) l3)))
(assert
 (not
  (= (Tail (Tail (Tail (Tail (Tail l3))))) (Tail (Tail (Tail (Tail l3)))))))
(assert
 (not (= (Tail (Tail (Tail (Tail (Tail l3))))) (Tail (Tail (Tail l3))))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l3))))) (Tail (Tail l3)))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l3))))) (Tail l3))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l3))))) l3)))
(assert (not (= (Tail l2) l2)))
(assert (not (= (Tail (Tail l2)) (Tail l2))))
(assert (not (= (Tail (Tail l2)) l2)))
(assert (not (= (Tail (Tail (Tail l2))) (Tail (Tail l2)))))
(assert (not (= (Tail (Tail (Tail l2))) (Tail l2))))
(assert (not (= (Tail (Tail (Tail l2))) l2)))
(assert (not (= (Tail (Tail (Tail (Tail l2)))) (Tail (Tail (Tail l2))))))
(assert (not (= (Tail (Tail (Tail (Tail l2)))) (Tail (Tail l2)))))
(assert (not (= (Tail (Tail (Tail (Tail l2)))) (Tail l2))))
(assert (not (= (Tail (Tail (Tail (Tail l2)))) l2)))
(assert
 (not
  (= (Tail (Tail (Tail (Tail (Tail l2))))) (Tail (Tail (Tail (Tail l2)))))))
(assert
 (not (= (Tail (Tail (Tail (Tail (Tail l2))))) (Tail (Tail (Tail l2))))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l2))))) (Tail (Tail l2)))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l2))))) (Tail l2))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l2))))) l2)))
(assert (not (= (Tail l1) l1)))
(assert (not (= (Tail (Tail l1)) (Tail l1))))
(assert (not (= (Tail (Tail l1)) l1)))
(assert (not (= (Tail (Tail (Tail l1))) (Tail (Tail l1)))))
(assert (not (= (Tail (Tail (Tail l1))) (Tail l1))))
(assert (not (= (Tail (Tail (Tail l1))) l1)))
(assert (not (= (Tail (Tail (Tail (Tail l1)))) (Tail (Tail (Tail l1))))))
(assert (not (= (Tail (Tail (Tail (Tail l1)))) (Tail (Tail l1)))))
(assert (not (= (Tail (Tail (Tail (Tail l1)))) (Tail l1))))
(assert (not (= (Tail (Tail (Tail (Tail l1)))) l1)))
(assert
 (not
  (= (Tail (Tail (Tail (Tail (Tail l1))))) (Tail (Tail (Tail (Tail l1)))))))
(assert
 (not (= (Tail (Tail (Tail (Tail (Tail l1))))) (Tail (Tail (Tail l1))))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l1))))) (Tail (Tail l1)))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l1))))) (Tail l1))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l1))))) l1)))
(assert (not (= (Tail l0) l0)))
(assert (not (= (Tail (Tail l0)) (Tail l0))))
(assert (not (= (Tail (Tail l0)) l0)))
(assert (not (= (Tail (Tail (Tail l0))) (Tail (Tail l0)))))
(assert (not (= (Tail (Tail (Tail l0))) (Tail l0))))
(assert (not (= (Tail (Tail (Tail l0))) l0)))
(assert (not (= (Tail (Tail (Tail (Tail l0)))) (Tail (Tail (Tail l0))))))
(assert (not (= (Tail (Tail (Tail (Tail l0)))) (Tail (Tail l0)))))
(assert (not (= (Tail (Tail (Tail (Tail l0)))) (Tail l0))))
(assert (not (= (Tail (Tail (Tail (Tail l0)))) l0)))
(assert
 (not
  (= (Tail (Tail (Tail (Tail (Tail l0))))) (Tail (Tail (Tail (Tail l0)))))))
(assert
 (not (= (Tail (Tail (Tail (Tail (Tail l0))))) (Tail (Tail (Tail l0))))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l0))))) (Tail (Tail l0)))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l0))))) (Tail l0))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail l0))))) l0)))
(assert (not (= (Tail Nil) Nil)))
(assert (not (= (Tail (Tail Nil)) (Tail Nil))))
(assert (not (= (Tail (Tail Nil)) Nil)))
(assert (not (= (Tail (Tail (Tail Nil))) (Tail (Tail Nil)))))
(assert (not (= (Tail (Tail (Tail Nil))) (Tail Nil))))
(assert (not (= (Tail (Tail (Tail Nil))) Nil)))
(assert (not (= (Tail (Tail (Tail (Tail Nil)))) (Tail (Tail (Tail Nil))))))
(assert (not (= (Tail (Tail (Tail (Tail Nil)))) (Tail (Tail Nil)))))
(assert (not (= (Tail (Tail (Tail (Tail Nil)))) (Tail Nil))))
(assert (not (= (Tail (Tail (Tail (Tail Nil)))) Nil)))
(assert
 (not
  (= (Tail (Tail (Tail (Tail (Tail Nil))))) (Tail (Tail (Tail (Tail Nil)))))))
(assert
 (not (= (Tail (Tail (Tail (Tail (Tail Nil))))) (Tail (Tail (Tail Nil))))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail Nil))))) (Tail (Tail Nil)))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail Nil))))) (Tail Nil))))
(assert (not (= (Tail (Tail (Tail (Tail (Tail Nil))))) Nil)))
(check-sat)

