
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
(assert (and (= l1 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (= l2 l3) )
(assert (is-Nil l0) )
(assert (and (= l3 l1) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
