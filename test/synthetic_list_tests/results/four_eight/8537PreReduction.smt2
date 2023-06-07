
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
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Nil l3) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(check-sat)
