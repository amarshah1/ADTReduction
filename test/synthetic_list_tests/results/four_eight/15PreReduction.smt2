
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
(assert (not (is-Cons l2)) )
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Cons l0)) )
(assert (not (= l0 l2)) )
(assert (= l0 l3) )
(assert (is-Nil l2) )
(assert (or (is-Cons l1) (= l2 Nil) (= l2 Nil) (= l2 l3)) )
(check-sat)
