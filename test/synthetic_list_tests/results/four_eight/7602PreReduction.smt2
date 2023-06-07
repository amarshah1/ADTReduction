
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
(assert (= l0 l1) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (= l2 l2)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
