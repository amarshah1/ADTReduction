
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
(assert (and (= l3 Nil) (is-Nil l0)) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (is-Cons l0) (= l2 Nil) (= l3 l1)) )
(assert (is-Nil l1) )
(assert (or (= l1 Nil) (= l0 l1) (= l0 l2) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
