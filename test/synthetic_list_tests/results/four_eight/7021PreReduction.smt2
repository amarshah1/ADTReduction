
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
(assert (and (is-Cons Nil) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (or (= l2 Nil) (= l3 l2) (= l2 l1) (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Nil l1) (= l0 Nil)) )
(check-sat)
