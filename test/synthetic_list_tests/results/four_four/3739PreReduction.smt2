
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
(assert (and (= l1 l1) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l2 l3)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons l1) (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
