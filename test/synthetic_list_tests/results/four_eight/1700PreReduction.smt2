
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
(assert (not (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 l0)) )
(assert (is-Nil l3) )
(assert (or (= l0 l3) (is-Cons l1) (= l2 Nil) (= l0 Nil)) )
(assert (not (= l3 l0)) )
(check-sat)
