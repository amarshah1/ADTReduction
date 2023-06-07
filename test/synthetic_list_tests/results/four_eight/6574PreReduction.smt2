
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
(assert (or (= l1 Nil) (= l1 Nil)) )
(assert (not (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l1) (= l2 l0) (is-Nil l1) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(check-sat)
