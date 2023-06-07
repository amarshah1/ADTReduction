
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
(assert (and (= l0 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil l3) (= l2 l2)) )
(assert (= l3 l3) )
(assert (and (= l3 Nil) (= l0 l1) (= l3 Nil)) )
(check-sat)
