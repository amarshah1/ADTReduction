
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
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (= l2 l3) )
(assert (not (is-Nil l2)) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Cons l1)) )
(check-sat)
