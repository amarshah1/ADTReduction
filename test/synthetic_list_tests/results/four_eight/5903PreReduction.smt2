
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
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (and (is-Cons l0) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (and (= l3 l3) (= l0 l1) (= l3 Nil) (is-Nil Nil)) )
(assert (= l1 l0) )
(assert (not (= l3 l1)) )
(assert (is-Cons Nil) )
(check-sat)
