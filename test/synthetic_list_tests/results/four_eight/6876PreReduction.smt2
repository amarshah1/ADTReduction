
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
(assert (= l2 l2) )
(assert (is-Nil Nil) )
(assert (not (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 l2) (= l1 l2)) )
(assert (or (is-Nil l3) (= l3 l1)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l3 Nil) (is-Nil l0)) )
(assert (= l0 l2) )
(check-sat)
