
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
(assert (not (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 l3) (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l3 l0) (= l3 l1)) )
(assert (= l0 l3) )
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (is-Nil l0) )
(assert (is-Cons l0) )
(check-sat)
