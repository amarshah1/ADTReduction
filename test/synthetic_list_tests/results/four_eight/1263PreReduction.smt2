
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
(assert (= l1 l2) )
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (not (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (is-Nil l2)) )
(check-sat)
