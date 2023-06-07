
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
(assert (and (= l2 l1) (= l3 l3) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (= l0 l1) )
(assert (is-Nil l3) )
(assert (or (= l0 Nil) (= l2 l3) (= l1 Nil) (is-Nil l3)) )
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(check-sat)
