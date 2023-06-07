
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
(assert (or (is-Nil Nil) (= l0 l3) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (= l0 l1) )
(assert (is-Cons l0) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l3 l0) (= l1 Nil)) )
(check-sat)
