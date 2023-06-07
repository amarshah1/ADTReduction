
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
(assert (or (= l2 Nil) (= l3 l1) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l3 l3) (is-Cons l1) (is-Nil l0) (= l0 l2)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(check-sat)
