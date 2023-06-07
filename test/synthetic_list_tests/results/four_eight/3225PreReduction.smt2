
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
(assert (or (= l3 Nil) (= l3 l1) (= l3 Nil)) )
(assert (= l0 l3) )
(assert (is-Cons l0) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 l0) (is-Nil l3)) )
(assert (or (= l1 l2) (= l2 l1)) )
(assert (= l1 l3) )
(assert (and (= l0 Nil) (= l3 l1)) )
(check-sat)
