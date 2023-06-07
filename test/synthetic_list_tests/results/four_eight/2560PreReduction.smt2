
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
(assert (or (= l0 Nil) (is-Nil Nil) (is-Cons l0) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons l3)) )
(assert (= l2 l0) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (= l0 Nil) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l0) (= l1 Nil) (= l1 l3) (= l1 Nil)) )
(check-sat)
