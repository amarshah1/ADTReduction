
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
(assert (is-Nil l3) )
(assert (or (= l0 l3) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (is-Cons l3) (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (and (= l3 l0) (= l3 Nil) (is-Nil l2) (= l2 Nil)) )
(check-sat)
