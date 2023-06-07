
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
(assert (and (is-Nil l1) (= l3 Nil) (= l2 Nil) (= l2 l0)) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l2 l1)) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons l0) (= l3 Nil)) )
(check-sat)