
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
(assert (and (= l2 l1) (= l2 Nil) (= l3 l3)) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (and (= l3 Nil) (= l0 Nil) (= l2 l0) (= l3 l0)) )
(assert (and (is-Nil Nil) (is-Cons l3) (is-Nil Nil)) )
(assert (not (is-Nil l1)) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(check-sat)
