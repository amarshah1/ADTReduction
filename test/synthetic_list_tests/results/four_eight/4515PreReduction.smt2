
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
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Cons l0) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (or (= l0 l2) (= l0 l3) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (= l3 l2) )
(check-sat)
