
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
(assert (and (= l0 Nil) (= l3 l0) (is-Cons Nil)) )
(assert (not (= l0 l3)) )
(assert (= l0 Nil) )
(assert (and (= l0 l3) (is-Nil l0)) )
(assert (and (= l3 Nil) (= l1 l0) (is-Cons l2) (= l0 l0)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(check-sat)
