
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
(assert (or (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l3 l1) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l1 l0)) )
(assert (not (= l1 Nil)) )
(check-sat)
