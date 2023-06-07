
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
(assert (and (= l1 l2) (is-Cons l2) (= l1 l3) (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (is-Nil l2) (= l0 l0)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (and (is-Nil Nil) (= l1 l1) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l3) (= l2 l3)) )
(check-sat)
