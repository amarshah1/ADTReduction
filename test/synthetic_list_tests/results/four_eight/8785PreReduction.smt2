
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
(assert (or (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l2) (is-Nil l1) (= l2 Nil) (= l2 l2)) )
(assert (= l0 Nil) )
(assert (= l0 l1) )
(assert (and (= l0 l2) (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l2 l3) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
