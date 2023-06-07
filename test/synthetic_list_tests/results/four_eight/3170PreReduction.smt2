
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
(assert (= l0 Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (or (= l0 l3) (= l3 l0) (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Cons l0) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l0 l0)) )
(check-sat)