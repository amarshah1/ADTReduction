
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
(assert (or (= l2 Nil) (= l0 Nil) (= l3 Nil) (= l0 l0)) )
(assert (or (is-Nil Nil) (is-Nil l0) (is-Cons l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (= l1 l3) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l0 l1) (= l1 l1) (= l3 Nil)) )
(check-sat)
