
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
(assert (or (= l3 Nil) (is-Cons l2)) )
(assert (not (is-Cons l3)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l1 Nil)) )
(assert (= l3 l1) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(check-sat)