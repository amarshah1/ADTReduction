
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
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons l3) (is-Nil Nil)) )
(assert (= l0 l1) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l2 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
