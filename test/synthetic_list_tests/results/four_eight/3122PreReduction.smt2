
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
(assert (= l0 l3) )
(assert (is-Cons l1) )
(assert (and (is-Nil l1) (= l2 l1) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (= l3 l3) )
(check-sat)