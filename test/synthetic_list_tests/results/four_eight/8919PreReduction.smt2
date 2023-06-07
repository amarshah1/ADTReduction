
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
(assert (not (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l0 l3) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (= l2 l1)) )
(assert (or (= l3 l0) (= l0 Nil)) )
(check-sat)
