
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
(assert (= l0 l3) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (= l2 l3)) )
(check-sat)
