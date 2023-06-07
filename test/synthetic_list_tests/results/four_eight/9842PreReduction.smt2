
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
(assert (= l0 l2) )
(assert (= l0 l0) )
(assert (= l3 l0) )
(assert (is-Cons l3) )
(assert (and (is-Nil l1) (is-Cons l2) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Nil l3) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 l2) (is-Nil l1) (= l1 Nil) (= l1 l0)) )
(check-sat)
