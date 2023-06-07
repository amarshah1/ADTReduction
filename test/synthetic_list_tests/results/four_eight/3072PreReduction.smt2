
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
(assert (is-Nil Nil) )
(assert (not (= l1 l2)) )
(assert (and (= l3 l0) (is-Nil Nil) (= l3 l2)) )
(assert (= l0 l3) )
(assert (or (= l3 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l2) (= l3 Nil) (is-Cons l1) (= l0 Nil)) )
(assert (and (is-Nil l2) (is-Cons l1) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
