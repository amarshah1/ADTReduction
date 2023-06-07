
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
(assert (and (is-Cons l3) (is-Cons l1) (= l3 Nil)) )
(assert (not (= l1 l2)) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l2) (= l3 l3) (= l0 Nil)) )
(assert (and (= l3 l1) (= l0 l2) (= l0 l1)) )
(check-sat)
