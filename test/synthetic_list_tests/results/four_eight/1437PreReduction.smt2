
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
(assert (not (= l2 Nil)) )
(assert (not (= l0 l0)) )
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (= l2 l3) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l2 l0) (= l1 l2)) )
(check-sat)
