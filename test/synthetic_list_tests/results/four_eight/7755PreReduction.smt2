
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
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l1 l3) (= l0 l0) (= l0 l2)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 l1) (is-Nil l3) (= l3 Nil) (= l1 l2)) )
(assert (is-Cons Nil) )
(check-sat)
