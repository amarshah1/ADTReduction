
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
(assert (or (= l0 Nil) (= l1 l2) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (is-Cons Nil) (= l0 l0)) )
(assert (is-Nil l0) )
(assert (is-Cons l3) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(check-sat)
