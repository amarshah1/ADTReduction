
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
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l3 l3) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 l1) (= l1 Nil)) )
(assert (and (= l0 Nil) (is-Nil l0)) )
(assert (or (= l3 l0) (= l2 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (= l1 l2) )
(check-sat)
