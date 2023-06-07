
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
(assert (= l1 Nil) )
(assert (not (= l2 l3)) )
(assert (= l2 l2) )
(assert (or (is-Cons l1) (= l2 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
