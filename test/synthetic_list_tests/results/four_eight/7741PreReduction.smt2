
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
(assert (and (= l2 l0) (= l2 Nil)) )
(assert (or (is-Nil l0) (= l1 l1) (= l1 l3) (= l3 l3)) )
(assert (or (= l0 Nil) (= l0 l0) (= l3 Nil)) )
(assert (and (= l2 l1) (= l2 Nil) (= l3 l3) (= l0 Nil)) )
(assert (not (is-Cons l0)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(check-sat)
