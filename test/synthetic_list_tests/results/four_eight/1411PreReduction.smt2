
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
(assert (or (= l1 l1) (= l0 Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (or (= l3 l1) (is-Nil Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(check-sat)
