
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
(assert (= l3 Nil) )
(assert (and (is-Nil Nil) (is-Cons l3) (is-Nil l2)) )
(assert (and (is-Nil l1) (= l2 Nil) (= l0 l0) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
