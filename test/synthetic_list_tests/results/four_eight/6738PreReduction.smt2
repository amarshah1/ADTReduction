
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
(assert (and (= l3 Nil) (is-Cons l3)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil l3) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(assert (is-Nil l3) )
(assert (= l0 Nil) )
(check-sat)
