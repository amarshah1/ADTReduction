
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
(assert (= l1 l1) )
(assert (= l0 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (is-Cons l3) )
(assert (= l2 Nil) )
(check-sat)
