
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
(assert (and (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil l1) )
(assert (and (is-Cons l3) (= l3 Nil) (is-Nil l1) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil l0) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
