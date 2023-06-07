
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
(assert (= l1 Nil) )
(assert (= l2 l2) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l3)) )
(assert (and (= l2 l1) (is-Cons Nil) (= l2 l2)) )
(assert (= l0 l3) )
(assert (not (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l1) )
(check-sat)
