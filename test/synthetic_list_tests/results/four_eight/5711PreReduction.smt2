
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
(assert (and (= l1 l0) (is-Cons l0) (= l2 l1) (= l0 Nil)) )
(assert (or (= l0 l0) (is-Nil Nil) (= l2 l2)) )
(assert (= l2 l3) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(check-sat)
