
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
(assert (not (is-Cons l3)) )
(assert (and (= l3 Nil) (= l2 l3) (= l0 l2) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (not (= l2 l2)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 l3) (= l1 l0) (= l2 Nil)) )
(check-sat)
