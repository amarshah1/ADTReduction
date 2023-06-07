
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
(assert (or (= l1 l0) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l1) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons l2) (is-Nil Nil)) )
(assert (and (= l1 l3) (is-Nil l2) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
