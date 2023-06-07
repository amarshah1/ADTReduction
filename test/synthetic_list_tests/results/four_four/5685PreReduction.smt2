
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil l1) (= l3 l1) (= l3 l1)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil l2) (is-Cons Nil)) )
(assert (or (= l1 l3) (is-Nil Nil) (= l0 l3)) )
(check-sat)
