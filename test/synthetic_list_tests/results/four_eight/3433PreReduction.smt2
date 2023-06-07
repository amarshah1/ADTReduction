
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
(assert (or (= l3 Nil) (= l0 l3) (= l1 l0) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (is-Cons l3) )
(assert (and (is-Nil Nil) (is-Nil l1) (= l0 l3) (is-Nil l3)) )
(assert (is-Cons l1) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(check-sat)
