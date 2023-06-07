
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
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil l0) (= l1 l3)) )
(assert (or (= l0 l3) (= l0 l2)) )
(assert (= l0 l0) )
(assert (and (= l1 Nil) (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (is-Cons l0)) )
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
