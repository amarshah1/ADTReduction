
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
(assert (and (= l3 Nil) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (and (= l3 l2) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(check-sat)
