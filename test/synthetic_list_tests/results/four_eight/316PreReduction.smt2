
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
(assert (= l3 l0) )
(assert (not (is-Cons Nil)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(assert (or (is-Cons l3) (= l1 Nil)) )
(assert (and (= l3 l1) (= l1 l0) (= l2 l3)) )
(check-sat)