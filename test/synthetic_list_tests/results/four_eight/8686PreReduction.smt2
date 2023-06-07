
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
(assert (or (= l1 Nil) (is-Cons l1) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (= l3 Nil) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(check-sat)