
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
(assert (or (is-Nil Nil) (is-Cons Nil) (= l1 l0) (= l0 l2)) )
(assert (= l3 l0) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (is-Cons l0) (= l2 l1)) )
(assert (is-Nil l3) )
(assert (is-Nil l3) )
(check-sat)