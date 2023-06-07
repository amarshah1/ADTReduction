
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
(assert (or (is-Cons l3) (is-Nil Nil) (= l0 l1)) )
(assert (= l0 l1) )
(assert (and (is-Nil Nil) (= l1 l3) (is-Nil l0) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(check-sat)
