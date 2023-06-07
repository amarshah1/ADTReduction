
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
(assert (= l3 Nil) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l3 Nil) (is-Nil l2) (= l1 l2)) )
(assert (and (is-Nil Nil) (is-Nil l1) (is-Cons Nil) (= l2 Nil)) )
(assert (= l3 l0) )
(assert (= l2 l2) )
(assert (or (= l1 l0) (is-Cons l0) (= l3 l0)) )
(check-sat)
