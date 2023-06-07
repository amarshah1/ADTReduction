
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
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l3 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l2) (is-Nil Nil) (= l2 l3) (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(check-sat)
