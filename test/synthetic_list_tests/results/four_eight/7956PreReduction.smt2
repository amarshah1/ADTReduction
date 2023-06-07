
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
(assert (not (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (= l1 l3) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 l0) (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (is-Nil l0) (= l3 l1)) )
(check-sat)
