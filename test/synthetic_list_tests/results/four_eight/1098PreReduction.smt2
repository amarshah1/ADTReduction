
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
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l1 l0)) )
(assert (or (is-Nil l1) (= l2 l0)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l3 l3)) )
(check-sat)
