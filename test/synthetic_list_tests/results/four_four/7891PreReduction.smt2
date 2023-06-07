
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
(assert (and (= l3 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (and (is-Cons Nil) (is-Cons l3) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
