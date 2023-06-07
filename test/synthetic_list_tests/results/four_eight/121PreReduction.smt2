
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
(assert (= l2 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil l0) (= l3 Nil) (= l1 Nil)) )
(assert (or (= l3 l1) (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
