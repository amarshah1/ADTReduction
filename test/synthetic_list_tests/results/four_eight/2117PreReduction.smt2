
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
(assert (is-Nil l2) )
(assert (and (is-Cons Nil) (is-Nil l1) (= l2 l1) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Cons l1) (= l1 Nil) (is-Nil l2)) )
(assert (not (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (is-Nil l2) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(check-sat)
