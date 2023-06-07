
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
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l1) (= l2 Nil) (= l1 l0)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons l1)) )
(assert (= l3 Nil) )
(assert (or (= l0 l0) (is-Nil l0) (= l1 Nil)) )
(check-sat)
