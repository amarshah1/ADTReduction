
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
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l2 l2)) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Cons l0)) )
(assert (is-Nil l2) )
(assert (and (= l0 l1) (= l3 Nil) (= l2 l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)