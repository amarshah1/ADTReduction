
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
(assert (or (= l3 Nil) (= l3 Nil) (is-Nil l0)) )
(assert (not (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil l2) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 l0) (is-Nil Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (or (= l1 Nil) (is-Nil l2)) )
(assert (is-Nil Nil) )
(check-sat)
