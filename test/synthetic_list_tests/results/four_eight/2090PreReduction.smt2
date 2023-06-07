
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
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l1 l1) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (not (= l2 l0)) )
(assert (not (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil l2) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
