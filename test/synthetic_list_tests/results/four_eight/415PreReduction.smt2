
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
(assert (or (= l3 Nil) (= l2 Nil) (= l2 l1) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l0 l0) (= l1 l2)) )
(assert (is-Nil l1) )
(assert (and (= l3 l0) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
