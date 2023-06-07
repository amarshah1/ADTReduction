
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
(assert (and (= l3 l2) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l3 l2)) )
(assert (or (= l2 l3) (is-Nil l0) (= l3 l2) (is-Cons Nil)) )
(check-sat)
