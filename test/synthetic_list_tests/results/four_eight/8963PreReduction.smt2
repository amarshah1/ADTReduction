
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
(assert (= l1 l2) )
(assert (= l2 l3) )
(assert (= l2 Nil) )
(assert (= l3 l1) )
(assert (and (is-Nil Nil) (is-Nil l2)) )
(assert (or (= l1 Nil) (= l3 l0) (= l0 Nil)) )
(assert (or (is-Nil l0) (is-Cons l2) (= l0 Nil) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l2 l3) (is-Cons l2)) )
(check-sat)
