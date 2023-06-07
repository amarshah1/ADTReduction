
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
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil l2) )
(assert (not (= l0 l3)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l1 l2)) )
(assert (and (is-Nil l0) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
