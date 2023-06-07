
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
(assert (or (= l1 l0) (= l0 Nil) (= l3 l3) (= l3 l0)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons l0)) )
(assert (and (is-Nil Nil) (= l0 l0) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons l3) (= l2 l1) (= l0 l2)) )
(check-sat)
