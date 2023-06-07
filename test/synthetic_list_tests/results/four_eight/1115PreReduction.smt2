
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
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil Nil) (is-Nil l3)) )
(assert (not (is-Cons l1)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l3 l0) (= l0 l2)) )
(assert (and (= l2 Nil) (= l2 l3) (= l3 Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
