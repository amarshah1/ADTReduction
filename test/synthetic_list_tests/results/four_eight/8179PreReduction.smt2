
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
(assert (or (is-Nil l1) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (or (is-Nil Nil) (= l1 l1) (= l2 l2)) )
(assert (and (= l3 Nil) (= l3 Nil) (= l1 l2) (= l3 l1)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l3) (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Cons l0)) )
(assert (is-Cons Nil) )
(check-sat)
