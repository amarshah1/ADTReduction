
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
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (and (= l1 Nil) (= l3 l1) (= l1 l0)) )
(assert (or (= l1 Nil) (= l1 l0)) )
(assert (= l3 Nil) )
(check-sat)
