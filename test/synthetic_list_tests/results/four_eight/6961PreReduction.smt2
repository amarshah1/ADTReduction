
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
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (or (is-Cons l3) (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (is-Nil l3)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (= l1 l1) )
(assert (is-Cons Nil) )
(check-sat)
