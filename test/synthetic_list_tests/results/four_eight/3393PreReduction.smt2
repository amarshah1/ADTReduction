
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
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l0 l2)) )
(assert (not (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l0 l3) (= l2 Nil)) )
(assert (not (= l0 l2)) )
(assert (or (is-Cons l0) (= l0 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
