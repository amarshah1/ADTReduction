
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
(assert (and (= l2 Nil) (= l1 l0)) )
(assert (or (= l0 Nil) (= l1 l2)) )
(assert (= l0 l0) )
(assert (or (is-Cons l1) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (not (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(check-sat)
