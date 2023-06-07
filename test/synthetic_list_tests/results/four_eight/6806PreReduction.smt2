
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
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons l0)) )
(assert (or (= l0 l2) (is-Nil Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l0 l1) (is-Nil l0)) )
(check-sat)