
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
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l0 l3) (= l2 Nil) (is-Cons l2)) )
(assert (is-Cons Nil) )
(check-sat)
