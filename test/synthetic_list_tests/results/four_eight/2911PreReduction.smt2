
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
(assert (or (= l1 Nil) (is-Nil l0)) )
(assert (and (= l2 Nil) (is-Cons l3)) )
(assert (not (= l2 l0)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
