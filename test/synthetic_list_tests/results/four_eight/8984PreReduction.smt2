
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
(assert (not (= l1 l2)) )
(assert (not (= l3 Nil)) )
(assert (and (is-Nil l1) (= l2 l0) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (not (is-Nil l0)) )
(assert (is-Nil l2) )
(assert (and (= l2 Nil) (= l1 l1) (= l3 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l0 l0)) )
(check-sat)
