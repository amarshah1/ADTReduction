
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
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (not (is-Cons l2)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
