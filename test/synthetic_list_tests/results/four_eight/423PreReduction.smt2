
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
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(assert (not (= l3 l1)) )
(assert (is-Nil l2) )
(assert (= l2 l2) )
(assert (or (= l1 l2) (= l1 l3) (= l1 l1) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l0) )
(check-sat)
