
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
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 l3) )
(assert (not (= l0 Nil)) )
(check-sat)
