
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
(assert (not (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l0 l2) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 Nil) (= l2 l0)) )
(assert (or (is-Nil Nil) (= l1 l1)) )
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (= l3 Nil)) )
(check-sat)
