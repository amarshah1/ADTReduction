
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
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l3 l1)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l2 l1) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (= l2 l0) )
(check-sat)
