
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
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l3) (= l3 Nil) (= l2 Nil) (is-Nil Nil)) )
(check-sat)
