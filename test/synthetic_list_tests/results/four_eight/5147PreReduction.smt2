
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
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil l1) (= l2 l1)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (or (= l2 l1) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
