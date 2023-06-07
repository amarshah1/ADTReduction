
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
(assert (and (= l0 Nil) (= l2 Nil) (= l2 l1)) )
(assert (or (= l1 Nil) (= l2 l0) (= l0 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (not (= l3 Nil)) )
(assert (not (= l3 l3)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 l2)) )
(assert (is-Nil l1) )
(check-sat)
