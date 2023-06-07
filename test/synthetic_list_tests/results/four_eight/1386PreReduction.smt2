
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
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l0 l3)) )
(assert (not (= l0 Nil)) )
(assert (not (= l1 l0)) )
(assert (or (is-Cons l3) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 l2) (= l0 Nil)) )
(assert (is-Nil l0) )
(check-sat)
