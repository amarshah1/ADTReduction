
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
(assert (and (= l2 Nil) (= l2 Nil) (is-Cons l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l1 l3)) )
(assert (is-Cons l3) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l2) (is-Nil Nil)) )
(assert (or (is-Nil l0) (is-Nil Nil) (= l1 Nil) (= l3 Nil)) )
(check-sat)
