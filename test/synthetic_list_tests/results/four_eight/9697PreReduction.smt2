
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
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (= l3 l2) (= l2 l3) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 l2) (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
