
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
(assert (is-Cons l3) )
(assert (and (is-Nil l3) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (or (= l0 Nil) (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)