
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
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 l3) (= l0 l1)) )
(assert (not (is-Cons l0)) )
(check-sat)
