
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
(assert (= l0 l1) )
(assert (= l3 l3) )
(assert (and (is-Nil Nil) (= l3 l1) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l2) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l3 l2) (= l3 Nil) (= l2 l0)) )
(assert (is-Cons l3) )
(check-sat)
