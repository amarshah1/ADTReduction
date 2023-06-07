
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
(assert (= l1 l3) )
(assert (and (= l2 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Nil l1) (= l3 Nil)) )
(assert (is-Nil l3) )
(check-sat)
