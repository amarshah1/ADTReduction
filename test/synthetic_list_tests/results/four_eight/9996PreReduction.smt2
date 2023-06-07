
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
(assert (is-Nil l3) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(check-sat)
