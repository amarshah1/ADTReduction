
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
(assert (= l1 l3) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(check-sat)
