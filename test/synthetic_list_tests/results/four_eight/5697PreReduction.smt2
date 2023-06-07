
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
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l0 l0) (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l0) (= l1 l1) (= l1 l2)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 Nil) (is-Cons l1)) )
(assert (and (is-Cons Nil) (= l0 l1) (is-Nil Nil) (= l1 l2)) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
