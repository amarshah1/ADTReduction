
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
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (= l2 l3) )
(assert (is-Nil l2) )
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons l3)) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 Nil) (= l3 l2) (is-Nil Nil)) )
(assert (= l3 Nil) )
(check-sat)
