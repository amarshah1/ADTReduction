
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
(assert (and (is-Nil Nil) (= l3 Nil) (= l0 Nil)) )
(assert (not (is-Nil l1)) )
(assert (is-Cons l1) )
(assert (not (= l0 Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 l3) )
(assert (= l0 Nil) )
(check-sat)
