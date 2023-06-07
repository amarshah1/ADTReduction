
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
(assert (and (= l0 Nil) (= l2 l3) (is-Nil l3) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 l3)) )
(assert (is-Nil l2) )
(assert (is-Nil l1) )
(assert (or (= l0 l3) (= l2 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
