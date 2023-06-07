
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
(assert (= l3 l2) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (and (= l3 l0) (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l1)) )
(assert (or (= l3 l3) (= l0 Nil) (= l3 l0) (is-Cons l0)) )
(check-sat)
