
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
(assert (or (= l0 l1) (is-Nil l1) (= l1 l0) (is-Nil l3)) )
(assert (= l3 l1) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons l3)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil l3)) )
(check-sat)
