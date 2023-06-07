
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
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (= l0 l2) (= l1 Nil) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l2) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l3 l1)) )
(assert (is-Nil l0) )
(check-sat)
