
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
(assert (not (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Nil l1)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (and (= l1 Nil) (= l3 Nil) (is-Nil l3) (= l3 l0)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
