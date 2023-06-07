
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
(assert (not (is-Nil l3)) )
(assert (not (= l2 l1)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l1 l1) (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)