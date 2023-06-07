
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
(assert (not (= l3 l1)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 l0) (= l3 l1)) )
(assert (is-Cons l2) )
(assert (not (= l1 Nil)) )
(assert (not (= l2 l0)) )
(assert (is-Cons l0) )
(assert (is-Cons l1) )
(assert (and (is-Nil l1) (= l3 Nil)) )
(check-sat)
