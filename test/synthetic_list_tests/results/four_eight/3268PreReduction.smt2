
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
(assert (or (= l2 Nil) (= l2 Nil) (= l3 l0) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 l1)) )
(assert (or (= l3 Nil) (= l0 l3)) )
(assert (= l2 Nil) )
(assert (and (= l3 l3) (is-Nil Nil)) )
(assert (is-Nil l3) )
(assert (or (= l2 Nil) (is-Cons Nil)) )
(check-sat)
