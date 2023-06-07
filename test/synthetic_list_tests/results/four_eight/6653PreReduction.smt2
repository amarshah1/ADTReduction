
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
(assert (is-Cons l2) )
(assert (and (= l0 Nil) (= l0 l0)) )
(assert (= l3 Nil) )
(assert (and (= l2 l0) (= l3 Nil)) )
(assert (not (is-Nil l3)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l0 l2) (= l0 Nil)) )
(assert (and (is-Cons l0) (= l0 Nil) (= l0 Nil)) )
(check-sat)
