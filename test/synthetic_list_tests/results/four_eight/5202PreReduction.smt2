
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
(assert (= l0 l2) )
(assert (or (= l0 l2) (= l2 Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Nil l2) (= l2 l2) (= l2 l0)) )
(assert (is-Cons l3) )
(check-sat)
