
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
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (= l1 l2) )
(assert (not (is-Nil Nil)) )
(assert (not (= l3 l0)) )
(assert (is-Cons l3) )
(assert (and (is-Cons l1) (= l2 Nil) (is-Nil l2)) )
(check-sat)
