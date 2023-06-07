
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
(assert (not (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l1 l2) )
(assert (not (is-Cons l1)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l1 l0)) )
(assert (or (= l3 Nil) (is-Cons l2) (= l3 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(check-sat)
