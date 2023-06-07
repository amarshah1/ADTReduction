
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
(assert (or (is-Cons l3) (is-Nil Nil)) )
(assert (= l1 l1) )
(assert (= l0 Nil) )
(assert (not (= l0 l3)) )
(assert (is-Nil l1) )
(assert (and (= l0 Nil) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l2 l3) (is-Cons Nil)) )
(check-sat)
