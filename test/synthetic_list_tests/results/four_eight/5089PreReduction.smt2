
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
(assert (not (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (= l2 l0)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (= l0 l3)) )
(assert (is-Nil l3) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 l1) (= l1 Nil) (= l3 l0)) )
(check-sat)
