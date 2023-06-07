
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
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l2 l0)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (and (= l3 l3) (= l3 l0) (= l3 l1)) )
(check-sat)
