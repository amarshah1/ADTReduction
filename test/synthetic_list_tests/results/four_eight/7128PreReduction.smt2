
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
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l0) (is-Nil l3) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l2 l0) (= l0 Nil)) )
(assert (= l3 Nil) )
(check-sat)
