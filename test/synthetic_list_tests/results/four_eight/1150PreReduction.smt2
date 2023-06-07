
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
(assert (is-Cons l0) )
(assert (or (= l0 Nil) (= l3 l1) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (is-Cons l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (or (= l0 l3) (= l2 Nil)) )
(check-sat)
