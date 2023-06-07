
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
(assert (is-Cons Nil) )
(assert (or (= l0 l2) (is-Nil l2)) )
(assert (is-Nil l1) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l1) (= l3 Nil) (= l0 l3)) )
(assert (is-Nil l0) )
(check-sat)