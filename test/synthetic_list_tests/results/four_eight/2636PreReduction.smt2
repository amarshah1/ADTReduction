
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
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l3 l1) (= l2 l0) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l2 l0)) )
(assert (= l2 l2) )
(assert (and (= l0 Nil) (is-Cons l1) (= l2 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (and (= l2 l3) (= l2 Nil) (is-Nil Nil) (= l1 l1)) )
(check-sat)
