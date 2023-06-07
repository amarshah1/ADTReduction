
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
(assert (or (= l3 Nil) (= l2 Nil) (= l2 Nil) (= l1 l2)) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil l3) (= l0 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 l1) (= l1 l1) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l0 l2)) )
(assert (not (= l3 l0)) )
(assert (is-Nil Nil) )
(check-sat)
