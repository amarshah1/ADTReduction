
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
(assert (and (= l0 l3) (= l1 l1) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l2 l0) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l3 Nil) (= l0 l1) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil l1) )
(assert (and (= l1 Nil) (= l0 Nil) (= l3 l2)) )
(check-sat)
