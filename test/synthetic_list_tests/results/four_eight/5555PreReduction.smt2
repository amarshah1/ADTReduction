
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
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil l1) (= l1 Nil) (= l1 l3) (is-Cons l0)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (or (= l3 l1) (= l1 l2) (is-Cons Nil) (= l3 l0)) )
(assert (or (= l1 l2) (is-Nil Nil) (is-Cons Nil) (= l0 l2)) )
(assert (is-Nil Nil) )
(check-sat)
