
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
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 l1) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (= l2 l1) (is-Cons l0) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l2) (= l3 Nil) (= l2 Nil)) )
(assert (or (= l1 l1) (= l2 Nil) (is-Nil l0) (= l2 l2)) )
(check-sat)
