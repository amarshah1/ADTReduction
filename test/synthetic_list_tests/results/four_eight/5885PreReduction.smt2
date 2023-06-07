
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
(assert (not (is-Nil l1)) )
(assert (and (= l0 l2) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 Nil) (= l2 l3)) )
(assert (and (= l3 l3) (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil l0) (= l2 Nil)) )
(check-sat)