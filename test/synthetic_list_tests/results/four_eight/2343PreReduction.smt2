
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
(assert (and (= l2 Nil) (is-Cons l2) (is-Cons Nil) (= l0 Nil)) )
(assert (= l3 l1) )
(assert (= l0 l3) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)