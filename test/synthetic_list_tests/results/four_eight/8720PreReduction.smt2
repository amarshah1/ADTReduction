
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (= l0 Nil) (= l1 Nil) (= l1 Nil) (is-Cons l2)) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil l1)) )
(assert (= l0 l3) )
(assert (is-Cons l1) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 l0) (is-Nil l3)) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l2 l2) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l2 l1) (= l1 Nil)) )
(check-sat)
