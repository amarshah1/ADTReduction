
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
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Cons l1) (is-Nil Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 l3)) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil l3)) )
(check-sat)
