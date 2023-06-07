
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (or (is-Cons Nil) (= l1 l0) (= l2 Nil) (is-Nil l3)) )
(assert (= l3 l2) )
(assert (and (is-Cons l3) (= l0 l0) (is-Cons Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (= l3 l3) )
(check-sat)
