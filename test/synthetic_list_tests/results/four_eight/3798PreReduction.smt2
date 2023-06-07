
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
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 l0)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(check-sat)