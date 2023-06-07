
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
(assert (not (= l1 Nil)) )
(assert (and (= l3 l3) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(assert (or (is-Nil l1) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(check-sat)
