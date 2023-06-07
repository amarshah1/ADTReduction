
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
(assert (not (= l0 Nil)) )
(assert (= l3 l2) )
(assert (= l1 Nil) )
(assert (and (is-Cons l2) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (= l2 Nil) )
(check-sat)
