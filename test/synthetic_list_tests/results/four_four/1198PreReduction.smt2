
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
(assert (and (= l2 l3) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
