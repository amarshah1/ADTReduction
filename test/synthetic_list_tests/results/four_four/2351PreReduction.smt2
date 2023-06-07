
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
(assert (and (is-Nil l2) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (= l0 l0)) )
(assert (or (= l1 l2) (= l2 Nil) (= l3 l3) (is-Cons l2)) )
(check-sat)
