
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
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l1 l1) (is-Nil l0)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l1 l1) (= l1 l0)) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)
