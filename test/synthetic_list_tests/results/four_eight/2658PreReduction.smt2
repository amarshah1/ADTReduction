
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
(assert (= l0 l1) )
(assert (is-Nil l3) )
(assert (or (= l2 Nil) (= l3 Nil) (= l3 l3) (is-Cons Nil)) )
(assert (= l2 l2) )
(assert (= l1 l1) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l1) (= l3 l0) (is-Nil Nil) (= l0 l1)) )
(check-sat)
