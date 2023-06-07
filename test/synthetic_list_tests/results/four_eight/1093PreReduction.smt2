
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
(assert (or (= l2 Nil) (= l1 Nil) (is-Cons l0)) )
(assert (or (= l3 l3) (= l3 l1)) )
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l3 Nil) (is-Cons l0) (= l3 l2) (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (or (= l0 l1) (= l1 Nil)) )
(check-sat)
