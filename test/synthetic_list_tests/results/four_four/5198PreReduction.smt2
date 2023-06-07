
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
(assert (and (is-Cons l1) (= l2 Nil) (= l1 Nil)) )
(assert (not (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l3) (is-Cons l1)) )
(check-sat)
