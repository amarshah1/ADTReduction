
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
(assert (= l2 l1) )
(assert (or (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Nil l1)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l2)) )
(check-sat)
