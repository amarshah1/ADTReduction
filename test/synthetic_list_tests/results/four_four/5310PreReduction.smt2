
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
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l0 Nil) (= l1 Nil)) )
(assert (or (= l3 l0) (is-Nil l3) (= l1 l3) (is-Cons Nil)) )
(assert (not (= l2 l0)) )
(check-sat)
