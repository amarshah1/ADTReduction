
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
(assert (and (= l0 l2) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l3 l3) (= l0 Nil) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l3 l2)) )
(assert (and (is-Nil Nil) (= l0 l0) (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Cons l3) (= l3 l2) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(check-sat)
