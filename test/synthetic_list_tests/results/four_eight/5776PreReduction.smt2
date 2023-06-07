
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
(assert (= l2 l3) )
(assert (or (is-Nil l1) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Cons l2) (is-Cons Nil) (= l0 Nil) (= l0 l3)) )
(assert (is-Cons l0) )
(assert (and (= l1 Nil) (= l1 Nil) (= l0 l2)) )
(assert (and (is-Cons l3) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l1 l0)) )
(check-sat)
