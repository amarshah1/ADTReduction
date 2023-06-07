
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
(assert (or (= l0 l1) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l0 l0)) )
(assert (not (= l2 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (is-Nil l1) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l2 l3)) )
(check-sat)
