
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
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (or (= l3 l3) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (= l2 l1) (= l0 Nil) (= l2 l2)) )
(assert (is-Nil l2) )
(check-sat)
