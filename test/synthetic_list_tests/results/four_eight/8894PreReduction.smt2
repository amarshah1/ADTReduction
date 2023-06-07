
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
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l2 l2) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l1 Nil) (= l2 Nil)) )
(assert (or (is-Cons l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil l3) )
(assert (and (= l0 Nil) (= l0 Nil) (= l2 l2)) )
(check-sat)
