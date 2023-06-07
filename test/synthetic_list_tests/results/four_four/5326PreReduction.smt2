
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
(assert (and (= l3 Nil) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Cons l1) (is-Cons Nil) (= l2 l3) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
