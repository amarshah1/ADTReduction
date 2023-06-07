
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
(assert (or (is-Nil l0) (= l3 Nil)) )
(assert (or (= l0 l0) (= l3 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l1) (= l3 l1) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l0) (= l3 l1)) )
(check-sat)
