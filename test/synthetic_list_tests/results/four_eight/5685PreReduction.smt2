
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
(assert (and (is-Nil Nil) (= l3 Nil) (= l3 l1) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (and (is-Nil l1) (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l2 Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(check-sat)
