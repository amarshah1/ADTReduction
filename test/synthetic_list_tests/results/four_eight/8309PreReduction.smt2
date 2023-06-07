
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
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l1 l3)) )
(assert (= l1 l2) )
(assert (is-Cons l1) )
(check-sat)
