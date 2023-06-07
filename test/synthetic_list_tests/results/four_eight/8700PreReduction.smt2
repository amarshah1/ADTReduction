
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
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (= l1 l1) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (and (= l1 l3) (= l0 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)
