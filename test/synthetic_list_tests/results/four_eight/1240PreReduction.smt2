
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
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (= l0 l2) (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (is-Cons l2) )
(assert (not (= l3 Nil)) )
(assert (= l2 l1) )
(assert (and (= l3 l0) (is-Nil l1) (is-Cons Nil)) )
(assert (and (= l3 l1) (= l0 Nil) (= l0 l1)) )
(check-sat)
