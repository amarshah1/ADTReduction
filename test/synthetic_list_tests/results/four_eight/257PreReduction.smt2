
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
(assert (or (= l3 Nil) (is-Cons l2) (= l2 Nil) (is-Nil l2)) )
(assert (or (= l3 l3) (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 l1) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons l1) )
(check-sat)
