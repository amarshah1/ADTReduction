
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
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l2 l3) (= l3 l3) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (= l3 l0) )
(assert (= l3 l1) )
(assert (= l2 Nil) )
(assert (not (is-Nil l1)) )
(check-sat)