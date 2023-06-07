
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
(assert (not (= l2 l0)) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l1 l3) (= l2 l3) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l0)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(check-sat)
