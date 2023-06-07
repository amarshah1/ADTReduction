
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
(assert (not (is-Nil l0)) )
(assert (is-Cons l1) )
(assert (and (= l1 l0) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l0 Nil) (= l2 l3)) )
(assert (and (is-Cons Nil) (= l1 l3) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(check-sat)
