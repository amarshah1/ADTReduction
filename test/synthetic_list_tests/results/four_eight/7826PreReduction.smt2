
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
(assert (and (= l2 l1) (= l1 l1)) )
(assert (or (= l0 Nil) (= l0 l2) (is-Cons l3) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l1 l3) (= l1 Nil) (= l2 l2) (= l2 l1)) )
(assert (is-Nil l1) )
(assert (and (= l2 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l1 Nil) (is-Nil l1)) )
(check-sat)
