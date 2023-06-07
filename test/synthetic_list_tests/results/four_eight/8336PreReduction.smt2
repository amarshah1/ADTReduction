
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
(assert (is-Nil l0) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l1 l0)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 l3) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l3) (= l1 l1) (is-Nil Nil) (= l0 l3)) )
(check-sat)
