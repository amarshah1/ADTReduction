
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
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l3) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (or (= l1 l0) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l1 l1) (= l1 Nil)) )
(assert (= l0 l3) )
(check-sat)