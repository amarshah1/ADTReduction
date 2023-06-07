
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
(assert (= l3 Nil) )
(assert (and (= l0 l1) (= l1 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (= l2 l3) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l1 l3)) )
(assert (is-Nil l1) )
(assert (or (= l0 Nil) (is-Nil l1)) )
(check-sat)
