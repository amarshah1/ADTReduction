
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
(assert (is-Cons l1) )
(assert (or (is-Cons l3) (= l1 Nil) (is-Cons l3) (= l0 l1)) )
(assert (or (is-Cons l0) (is-Nil Nil) (is-Nil Nil) (= l3 l0)) )
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (or (= l3 l0) (= l3 Nil) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (not (= l3 Nil)) )
(check-sat)
