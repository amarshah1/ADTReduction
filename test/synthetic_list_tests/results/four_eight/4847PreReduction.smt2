
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
(assert (or (= l2 Nil) (= l1 l0)) )
(assert (= l3 l1) )
(assert (or (= l3 Nil) (= l3 l2)) )
(assert (= l3 Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l3) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 Nil) (is-Nil l0)) )
(check-sat)
