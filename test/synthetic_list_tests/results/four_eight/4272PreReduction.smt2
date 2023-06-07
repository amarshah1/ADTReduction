
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
(assert (and (is-Cons l1) (= l3 Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l3)) )
(assert (= l2 Nil) )
(assert (or (= l0 l0) (= l3 Nil) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
