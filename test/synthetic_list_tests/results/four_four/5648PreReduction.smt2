
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
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons l3)) )
(assert (= l3 Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l2 l3) (= l0 Nil) (is-Cons l2)) )
(check-sat)
