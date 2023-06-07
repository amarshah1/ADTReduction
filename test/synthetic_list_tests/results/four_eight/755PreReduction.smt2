
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
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Cons l0) (= l3 Nil)) )
(assert (not (is-Nil l2)) )
(assert (and (= l2 l2) (= l2 Nil) (is-Nil l3) (is-Cons l2)) )
(assert (= l0 Nil) )
(assert (or (is-Cons l1) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
