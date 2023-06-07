
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
(assert (and (= l1 Nil) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (is-Nil l1) (is-Nil l3)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
