
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
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (not (is-Nil Nil)) )
(assert (not (= l1 l3)) )
(assert (not (= l1 l0)) )
(assert (not (is-Cons l1)) )
(assert (or (= l2 Nil) (= l2 l3)) )
(assert (not (= l0 Nil)) )
(check-sat)