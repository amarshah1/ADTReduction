
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
(assert (and (= l3 l2) (is-Nil l3) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (= l3 l2) (= l0 Nil) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (= l3 l2) )
(assert (and (is-Cons l0) (is-Nil Nil) (is-Nil Nil) (= l1 l0)) )
(check-sat)
