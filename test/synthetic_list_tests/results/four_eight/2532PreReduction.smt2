
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
(assert (and (= l3 Nil) (is-Nil l1) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l2 l1) (= l0 Nil)) )
(assert (and (is-Nil l1) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l0 l1) (= l3 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (= l2 l2) )
(check-sat)
