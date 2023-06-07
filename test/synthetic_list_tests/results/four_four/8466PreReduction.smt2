
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
(assert (and (= l0 Nil) (= l1 l1) (= l2 Nil) (is-Nil l0)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l0 l0) (is-Cons l1) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
