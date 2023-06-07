
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
(assert (is-Nil l1) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Nil l3) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (or (= l1 l1) (= l0 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l3) )
(assert (= l3 Nil) )
(check-sat)
