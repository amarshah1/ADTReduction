
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
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (is-Nil l2) )
(assert (and (= l1 l3) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (and (= l0 l3) (= l3 Nil)) )
(assert (= l1 Nil) )
(check-sat)