
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
(assert (= l0 l1) )
(assert (not (= l1 Nil)) )
(assert (= l1 l2) )
(assert (is-Nil l2) )
(assert (and (= l3 l3) (= l0 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l0 l1) (= l3 Nil) (= l3 Nil)) )
(assert (is-Nil l2) )
(assert (and (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(check-sat)
