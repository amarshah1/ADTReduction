
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
(assert (= l0 l2) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 l3)) )
(assert (= l1 l0) )
(assert (or (= l0 l3) (is-Cons Nil) (= l2 Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)
