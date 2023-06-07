
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
(assert (is-Cons Nil) )
(assert (or (is-Cons l3) (= l2 l2) (= l3 Nil)) )
(assert (= l0 l0) )
(assert (= l2 l2) )
(assert (is-Nil l0) )
(assert (or (is-Nil l3) (= l1 l3) (= l3 l3)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
