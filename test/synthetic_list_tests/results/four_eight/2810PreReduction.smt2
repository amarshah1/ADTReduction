
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
(assert (is-Nil Nil) )
(assert (or (is-Nil l0) (is-Cons Nil) (= l1 Nil) (= l0 l1)) )
(assert (= l3 Nil) )
(assert (and (= l1 l3) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (= l1 l2) )
(assert (= l3 l1) )
(assert (and (is-Nil l0) (is-Cons Nil)) )
(check-sat)
