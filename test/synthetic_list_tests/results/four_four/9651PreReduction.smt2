
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
(assert (or (is-Nil l3) (is-Cons Nil) (= l1 l1) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l1 l3) (= l0 l2)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l1 l0) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil)) )
(check-sat)
