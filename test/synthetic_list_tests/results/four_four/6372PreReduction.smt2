
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
(assert (and (is-Nil Nil) (is-Cons l0) (is-Cons Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil Nil) (= l0 l0)) )
(check-sat)
