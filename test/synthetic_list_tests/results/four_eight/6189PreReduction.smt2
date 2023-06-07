
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
(assert (is-Nil l3) )
(assert (is-Nil l2) )
(assert (not (= l3 l2)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(check-sat)