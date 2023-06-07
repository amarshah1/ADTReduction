
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
(assert (is-Cons Nil) )
(assert (or (= l3 l2) (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)
