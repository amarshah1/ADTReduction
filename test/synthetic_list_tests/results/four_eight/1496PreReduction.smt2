
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
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l3 l3)) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (or (= l1 l3) (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l3) (= l3 l0) (= l3 l3)) )
(check-sat)
