
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
(assert (and (= l1 Nil) (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l3 Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l0 l3) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(check-sat)
