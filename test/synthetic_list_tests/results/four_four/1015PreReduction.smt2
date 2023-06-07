
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
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l1 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(check-sat)
