
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
(assert (not (= l3 l3)) )
(assert (and (is-Cons l1) (= l2 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l0 l1) (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
