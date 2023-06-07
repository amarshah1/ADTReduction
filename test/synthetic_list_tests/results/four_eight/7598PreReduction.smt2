
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
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (not (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (= l0 Nil) (= l2 l3) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (not (= l1 l0)) )
(check-sat)
