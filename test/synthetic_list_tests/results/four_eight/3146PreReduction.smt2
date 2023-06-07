
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
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l2) (is-Nil Nil) (= l3 l3) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l0) (= l1 Nil) (= l2 Nil) (is-Nil l2)) )
(assert (= l3 l2) )
(assert (is-Cons Nil) )
(check-sat)
