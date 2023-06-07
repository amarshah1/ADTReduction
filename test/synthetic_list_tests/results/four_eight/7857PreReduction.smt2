
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
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l3 Nil) (= l0 l0) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (= l0 l3) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil l0) )
(check-sat)