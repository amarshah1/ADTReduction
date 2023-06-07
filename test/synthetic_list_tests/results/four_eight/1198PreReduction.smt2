
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
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l3)) )
(assert (= l1 Nil) )
(assert (and (= l1 l1) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l0) (= l3 l2)) )
(check-sat)
