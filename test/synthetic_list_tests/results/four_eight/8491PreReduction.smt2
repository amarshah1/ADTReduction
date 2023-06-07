
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
(assert (and (= l0 Nil) (is-Nil Nil) (= l3 l2) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (and (= l1 l2) (= l0 l0) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l3) (= l3 l1)) )
(assert (is-Cons l0) )
(assert (is-Cons l0) )
(check-sat)