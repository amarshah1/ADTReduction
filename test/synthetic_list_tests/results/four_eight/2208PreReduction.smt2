
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
(assert (and (= l1 l3) (is-Cons l1) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l2 l0) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons l3)) )
(check-sat)