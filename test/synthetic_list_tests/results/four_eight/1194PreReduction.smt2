
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
(assert (not (= l2 l2)) )
(assert (is-Nil l2) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (and (= l1 l0) (= l0 l2) (= l2 l0) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 l2)) )
(check-sat)