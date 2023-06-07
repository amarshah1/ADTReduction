
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
(assert (or (= l2 Nil) (= l0 l3)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l0) (= l2 l3) (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Cons l3) (= l0 Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (= l1 l3) )
(check-sat)
