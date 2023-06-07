
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
(assert (= l0 l3) )
(assert (not (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 l3)) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (not (= l1 l2)) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Cons l0)) )
(assert (is-Cons l0) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
