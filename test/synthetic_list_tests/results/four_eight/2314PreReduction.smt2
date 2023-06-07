
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
(assert (or (= l0 Nil) (is-Cons l0) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (or (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l0) (= l0 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 l1) (is-Cons Nil) (= l1 Nil) (= l3 l2)) )
(check-sat)
