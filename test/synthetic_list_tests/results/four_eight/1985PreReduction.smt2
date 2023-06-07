
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
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l3 l1) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Nil l2) (= l2 Nil) (= l3 l2) (= l2 l3)) )
(assert (and (is-Cons l0) (= l3 Nil) (= l2 Nil) (= l3 l3)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
