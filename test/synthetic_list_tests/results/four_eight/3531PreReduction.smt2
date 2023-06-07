
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
(assert (and (= l3 Nil) (= l2 l3)) )
(assert (or (is-Nil l0) (= l3 Nil) (= l1 l1) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l1) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l1 l3)) )
(check-sat)
