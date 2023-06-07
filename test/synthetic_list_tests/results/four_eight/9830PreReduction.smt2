
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
(assert (or (= l0 l2) (is-Cons Nil) (is-Nil l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons l2)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (= l2 l2) )
(assert (= l2 l1) )
(check-sat)
