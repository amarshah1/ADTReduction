
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
(assert (and (= l3 Nil) (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l2) (= l1 Nil)) )
(check-sat)
