
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
(assert (or (= l0 Nil) (= l1 Nil) (= l2 Nil) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l3 l0)) )
(assert (not (= l0 Nil)) )
(assert (not (= l2 l2)) )
(assert (not (is-Nil l1)) )
(assert (is-Nil l3) )
(check-sat)
