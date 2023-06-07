
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
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Nil l0)) )
(assert (or (is-Nil l2) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l2) (= l3 l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
