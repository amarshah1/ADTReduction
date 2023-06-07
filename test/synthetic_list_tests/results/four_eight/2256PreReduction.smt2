
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
(assert (not (= l3 Nil)) )
(assert (is-Nil l3) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 l2) (is-Cons Nil)) )
(assert (= l1 l0) )
(assert (is-Cons Nil) )
(assert (or (= l0 l1) (is-Nil l0)) )
(assert (is-Cons Nil) )
(check-sat)
