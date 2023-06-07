
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
(assert (not (is-Nil Nil)) )
(assert (and (= l2 l3) (= l3 l0) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (= l1 l3) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (= l3 l0) (= l1 Nil) (= l1 l0) (= l1 Nil)) )
(check-sat)
