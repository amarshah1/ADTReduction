
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
(assert (not (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (= l1 l3) )
(assert (is-Nil l0) )
(assert (or (= l2 l3) (= l1 l1)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l0 Nil) (= l1 l2)) )
(assert (and (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil l3) )
(check-sat)
