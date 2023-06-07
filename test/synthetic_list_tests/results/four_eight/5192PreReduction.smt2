
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
(assert (or (is-Nil Nil) (= l0 Nil) (= l3 Nil) (= l2 l2)) )
(assert (= l2 Nil) )
(assert (or (is-Cons l0) (is-Cons Nil) (= l3 Nil) (is-Nil l0)) )
(assert (is-Nil l3) )
(assert (= l2 Nil) )
(assert (not (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
