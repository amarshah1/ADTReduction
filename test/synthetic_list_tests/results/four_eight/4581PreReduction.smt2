
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
(assert (or (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l3 l2)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(check-sat)
