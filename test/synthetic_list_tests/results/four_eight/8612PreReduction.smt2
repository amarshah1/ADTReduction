
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
(assert (= l1 l2) )
(assert (= l2 l3) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l3)) )
(assert (= l0 l2) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l3 l3) (is-Cons Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Nil l0) (is-Nil l2)) )
(check-sat)
