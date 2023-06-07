
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
(assert (not (= l0 Nil)) )
(assert (and (is-Nil l2) (= l1 l0) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 l0) (= l0 Nil) (= l2 l2)) )
(assert (not (is-Nil Nil)) )
(check-sat)
