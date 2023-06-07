
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
(assert (not (= l3 l3)) )
(assert (or (= l1 Nil) (= l0 Nil)) )
(assert (= l3 l0) )
(assert (and (= l0 Nil) (= l2 l3) (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Nil l1) (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l2 l0) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(check-sat)
