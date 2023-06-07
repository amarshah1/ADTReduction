
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
(assert (or (= l1 Nil) (is-Cons l2)) )
(assert (is-Cons l3) )
(assert (= l0 l0) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
