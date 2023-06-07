
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
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 l0) (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 l1)) )
(assert (and (is-Cons Nil) (= l1 l1)) )
(assert (and (= l3 l0) (= l2 l1) (is-Cons l2)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(check-sat)
