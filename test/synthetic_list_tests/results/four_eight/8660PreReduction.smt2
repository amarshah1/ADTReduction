
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
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l1 Nil) (is-Nil l2)) )
(assert (= l3 Nil) )
(assert (or (is-Cons l3) (= l0 l2)) )
(assert (and (= l1 l3) (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(check-sat)