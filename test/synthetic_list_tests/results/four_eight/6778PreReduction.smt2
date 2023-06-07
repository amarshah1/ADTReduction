
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
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (or (= l2 l2) (= l1 l3) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l3 l0) (= l1 l1) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 l0) (= l1 l2)) )
(assert (and (= l0 Nil) (is-Cons l2)) )
(check-sat)
