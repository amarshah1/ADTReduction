
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
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Nil l0)) )
(check-sat)
