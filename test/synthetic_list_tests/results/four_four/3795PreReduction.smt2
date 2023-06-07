
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
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l1 l3) (= l0 l2)) )
(assert (or (= l1 Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)