
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
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (or (= l1 l3) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Cons l1) (= l0 l0) (= l3 Nil)) )
(assert (= l3 Nil) )
(check-sat)
