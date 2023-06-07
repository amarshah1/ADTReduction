
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
(assert (and (is-Cons l1) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l0 l0) (is-Nil l0)) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (and (= l3 l3) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(check-sat)
