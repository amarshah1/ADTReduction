
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
(assert (or (= l0 Nil) (= l2 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l0 l2) )
(assert (and (is-Nil Nil) (is-Nil l2) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 l1) )
(assert (and (= l0 l3) (= l2 Nil) (= l3 Nil)) )
(check-sat)
