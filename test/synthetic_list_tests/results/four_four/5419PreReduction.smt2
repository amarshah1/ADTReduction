
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
(assert (or (is-Cons l1) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 l3) (= l1 Nil) (= l3 l1) (is-Nil Nil)) )
(assert (or (= l0 l1) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 l1) (= l3 Nil) (= l2 Nil)) )
(check-sat)
