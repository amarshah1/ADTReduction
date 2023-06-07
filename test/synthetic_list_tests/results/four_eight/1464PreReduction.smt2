
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
(assert (is-Nil l1) )
(assert (or (= l0 l1) (is-Cons Nil) (= l1 l1) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (and (is-Cons Nil) (= l2 l3) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 l0) (= l1 Nil)) )
(check-sat)
