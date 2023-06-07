
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
(assert (is-Cons l2) )
(assert (and (= l1 Nil) (= l0 l1) (= l1 Nil) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l3) (= l2 Nil)) )
(assert (and (= l0 l0) (= l1 Nil) (= l2 Nil)) )
(check-sat)
