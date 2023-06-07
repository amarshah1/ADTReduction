
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
(assert (and (= l2 Nil) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l3 l3) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (and (= l3 l1) (= l1 l2) (is-Cons Nil)) )
(check-sat)
