
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
(assert (or (= l1 Nil) (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l3) (= l1 l1) (is-Nil l3) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(check-sat)
