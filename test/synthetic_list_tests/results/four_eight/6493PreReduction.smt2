
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
(assert (and (= l0 l2) (= l3 Nil) (= l2 Nil) (= l1 l1)) )
(assert (or (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l1) (= l2 Nil) (= l3 l0)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 Nil) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l3) (= l2 Nil)) )
(check-sat)
