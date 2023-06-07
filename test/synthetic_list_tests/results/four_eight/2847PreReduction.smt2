
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
(assert (is-Nil Nil) )
(assert (not (is-Cons l3)) )
(assert (= l3 l0) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l0)) )
(assert (and (is-Cons Nil) (is-Cons l1) (is-Cons Nil) (= l1 l1)) )
(assert (is-Cons l1) )
(assert (= l2 l0) )
(check-sat)
