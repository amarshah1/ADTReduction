
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
(assert (= l2 l3) )
(assert (not (is-Cons l0)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l1 l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 l2)) )
(assert (or (= l0 Nil) (is-Nil l1)) )
(assert (and (= l0 Nil) (= l1 l2) (is-Nil Nil)) )
(check-sat)
