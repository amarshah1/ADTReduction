
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
(assert (or (= l3 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (and (is-Cons l1) (is-Nil l3) (= l1 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (is-Nil l3) )
(assert (and (= l2 l1) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(check-sat)
