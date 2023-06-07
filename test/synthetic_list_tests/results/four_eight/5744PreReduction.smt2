
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
(assert (is-Nil l2) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (or (= l3 l0) (is-Nil l2)) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l2) )
(check-sat)
